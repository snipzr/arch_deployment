#!/bin/bash

set -e  

DISK="/dev/sda"
HOSTNAME="archbox"
USER1="collegue"
USER2="fils"
PASSWORD="azerty123"
REGION="Europe"
CITY="Paris"
LANG="fr_FR.UTF-8"
KEYMAP="fr-latin1"

log() { echo -e "\n $1..."; }
error_exit() {
    echo "Erreur : $1"
    exit 1
}

if [ "$(id -u)" -ne 0 ]; then
    error_exit 
fi

if [ ! -b "$DISK" ]; then
    error_exit "Le disque $DISK n'existe pas."
fi

log "Configuration des miroirs -->"
reflector --country France --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

timedatectl set-ntp true

log "Partitionnement du disque en GPT -->"
wipefs -a "$DISK"
parted -s "$DISK" mklabel gpt
parted -s "$DISK" mkpart ESP fat32 1MiB 513MiB
parted -s "$DISK" set 1 esp on
parted -s "$DISK" mkpart primary 513MiB 100%

log "Chiffrement LUKS -->"
cryptsetup luksFormat --type luks1 "${DISK}2" <<< "$PASSWORD"
cryptsetup open "${DISK}2" cryptlvm <<< "$PASSWORD"

log "Configuration LVM -->"
pvcreate /dev/mapper/cryptlvm
vgcreate vg0 /dev/mapper/cryptlvm
lvcreate -L 40G -n root vg0
lvcreate -L 8G -n swap vg0
lvcreate -L 7G -n vbox vg0
lvcreate -L 5G -n shared vg0
lvcreate -L 10G -n encrypted vg0

log "Formatage des partitions -->"
mkfs.fat -F32 "${DISK}1"
mkfs.ext4 /dev/vg0/root
mkswap /dev/vg0/swap
mkfs.ext4 /dev/vg0/vbox
mkfs.ext4 /dev/vg0/shared

log "Montage des partitions -->"
mount /dev/vg0/root /mnt
mkdir -p /mnt/{boot,home/shared,vbox}
mount "${DISK}1" /mnt/boot
swapon /dev/vg0/swap
mount /dev/vg0/shared /mnt/home/shared
mount /dev/vg0/vbox /mnt/vbox

log "Installation des paquets de base -->"
pacstrap /mnt base base-devel linux linux-firmware linux-headers \
    lvm2 vim sudo networkmanager grub grub-efi-x86_64 efibootmgr dosfstools \
    mkinitcpio git cryptsetup btrfs-progs sddm reflector plasma-workspace \
    hyprland waybar


genfstab -U /mnt >> /mnt/etc/fstab

log "Configuration du système -->"
arch-chroot /mnt /bin/bash << EOF_CHROOT
ln -sf /usr/share/zoneinfo/$REGION/$CITY /etc/localtime
hwclock --systohc
echo "$HOSTNAME" > /etc/hostname
echo "$LANG UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=$LANG" > /etc/locale.conf
echo "KEYMAP=$KEYMAP" > /etc/vconsole.conf
log "Configuration du clavier pour SDDM et X11 -->"
cat > /etc/X11/xorg.conf.d/00-keyboard.conf << 'EOF_KEYBOARD'
Section "InputClass"
    Identifier "system-keyboard"
    MatchIsKeyboard "on"
    Option "XkbLayout" "fr"
    Option "XkbModel" "pc105"
    Option "XkbVariant" ""
    Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
EOF_KEYBOARD

log "Création des utilisateurs et configuration des permissions -->"
useradd -m -G wheel -s /bin/bash "$USER1"
useradd -m -G wheel -s /bin/bash "$USER2"
echo "$USER1:$PASSWORD" | chpasswd
echo "$USER2:$PASSWORD" | chpasswd

echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel
chmod 440 /etc/sudoers.d/wheel

groupadd partage
usermod -aG partage collegue
usermod -aG partage fils
mkdir -p /home/shared
chgrp partage /home/shared
chmod 2775 /home/shared
chmod g+s /home/shared
echo "umask 002" >> /etc/profile



log "Configuration de mkinitcpio -->"
cat > /etc/mkinitcpio.conf << MKINITCPIO
MODULES=(dm-crypt dm-mod)
BINARIES=(cryptsetup)
FILES=()
HOOKS=(base udev autodetect modconf block keyboard keymap encrypt lvm2 filesystems fsck)
MKINITCPIO
mkinitcpio -P

log "Configuration de GRUB -->"
CRYPT_UUID=\$(blkid -s UUID -o value ${DISK}2)
echo "cryptlvm UUID=\$CRYPT_UUID none luks" > /etc/crypttab

cat > /etc/default/grub << GRUB
GRUB_DEFAULT=0
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR="Arch"
GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=3"
GRUB_CMDLINE_LINUX="cryptdevice=UUID=\$CRYPT_UUID:cryptlvm:allow-discards root=/dev/vg0/root"
GRUB_ENABLE_CRYPTODISK=y
GRUB

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB --recheck
grub-mkconfig -o /boot/grub/grub.cfg

log "Installation de Hyprland et ses dépendances -->"
pacman -Sy --noconfirm \
    xorg xorg-server xorg-xinit \
    mesa xf86-video-intel vulkan-intel \
    hyprland waybar rofi foot hyprpaper \
    firefox chromium \
    neofetch htop btop \
    network-manager-applet \
    xdg-desktop-portal-hyprland pipewire pipewire-pulse wireplumber \
    qt5-wayland qt6-wayland polkit-kde-agent dunst xdg-desktop-portal \
    xdg-user-dirs xdg-utils xdg-desktop-portal-hyprland

log "Configuration de Hyprland pour collegue -->"
mkdir -p /home/$USER1/.config/hypr
cat > /home/$USER1/.config/hypr/hyprland.conf << HYPRLAND_CONF
exec-once = hyprpaper &
exec-once = waybar &
exec-once = foot &

input {
    kb_layout = fr
    kb_options = grp:alt_shift_toggle
}

bind = CTRL, N, exec, foot
bind = CTRL, Q, killactive
HYPRLAND_CONF
chown -R $USER1:$USER1 /home/$USER1/.config/hypr

log "Ajout du wallpaper -->"
pacman -Sy --noconfirm curl

mkdir -p /usr/share/backgrounds

curl -L -o /usr/share/backgrounds/default-wallpaper.png \
    https://images6.alphacoders.com/706/706545.png || echo "Erreur : Impossible de télécharger l'image."

if [ ! -f /usr/share/backgrounds/default-wallpaper.png ]; then
    echo "Erreur : L'image de fond d'écran n'a pas été téléchargée."
    exit 1
fi

chmod 644 /usr/share/backgrounds/default-wallpaper.png
chown $USER1:$USER1 /usr/share/backgrounds/default-wallpaper.png
echo "Image téléchargée et permissions appliquées avec succès."
mkdir -p /home/$USER1/.config/hypr

MONITOR="DP-1"
if pgrep Hyprland > /dev/null; then
    DETECTED_MONITOR=$(sudo -u $USER1 hyprctl monitors | grep "Monitor" | awk '{print $2}' | head -n 1)
    if [[ ! -z "$DETECTED_MONITOR" ]]; then
        MONITOR=$DETECTED_MONITOR
    fi
fi

cat > /home/$USER1/.config/hypr/hyprpaper.conf << EOF_HYPRPAPER
preload = /usr/share/backgrounds/default-wallpaper.png
wallpaper = $MONITOR, /usr/share/backgrounds/default-wallpaper.png
renderquality = 2
EOF_HYPRPAPER


if [ -f /home/$USER1/.config/hypr/hyprpaper.conf ]; then
    chmod 644 /home/$USER1/.config/hypr/hyprpaper.conf
    chown $USER1:$USER1 /home/$USER1/.config/hypr/hyprpaper.conf
    echo "Fichier hyprpaper.conf configuré avec succès."
else
    echo "Erreur : Le fichier hyprpaper.conf n'a pas été créé."
    exit 1
fi

pkill hyprpaper
hyprpaper &

echo "Hyprpaper relancé avec succès."


log "Configuration de Hyprland pour fils -->"
mkdir -p /home/$USER2/.config/hypr
cat > /home/$USER2/.config/hypr/hyprland.conf << HYPRLAND_CONF
exec-once = hyprpaper &
exec-once = waybar &
exec-once = foot &

input {
    kb_layout = fr
    kb_options = grp:alt_shift_toggle
}


bind = CTRL, N, exec, foot
bind = CTRL, Q, killactive
HYPRLAND_CONF
chown -R $USER2:$USER2 /home/$USER2/.config/hypr

log "Création de la session Hyprland-->"
mkdir -p /usr/share/wayland-sessions
cat > /usr/share/wayland-sessions/hyprland.desktop << EOF_DESK
[Desktop Entry]
Name=Hyprland
Comment=Un compositeur Wayland dynamique
Exec=/usr/bin/Hyprland
Type=Application
DesktopNames=Hyprland
EOF_DESK


log "Activation des services-->"
systemctl enable sddm
systemctl enable NetworkManager

EOF_CHROOT

log "Nettoyage et démontage-->"
umount -R /mnt
swapoff -a
vgchange -an vg0
cryptsetup close cryptlvm

echo "Installation terminée ! Vous pouvez redémarrer."
