1.Fichiers de configuration édités/créés :

/etc/locale.gen
/etc/locale.conf
/etc/vconsole.conf
/etc/hostname
/etc/mkinitcpio.conf
/etc/default/grub
/etc/crypttab
/etc/sudoers.d/wheel
/etc/X11/xorg.conf.d/00-keyboard.conf
/usr/share/wayland-sessions/hyprland.desktop
/home/collegue/.config/hypr/hyprland.conf
/home/collegue/.config/hypr/hyprpaper.conf
/home/fils/.config/hypr/hyprland.conf
/home/fils/.config/hypr/hyprpaper.conf

Résultats des commandes suivantes:

Résultat de : lsblk -f: 

cat /etc/passwd /etc/group /etc/fstab /etc/mtab
echo $HOSTNAME
grep -i installed /var/log/pacman.log

lsblk -f : 

NAME                FSTYPE      FSVER            LABEL       UUID                                   FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                                                                
├─sda1              vfat        FAT32                        AE8D-CF7B                               424,5M    17% /boot
└─sda2              crypto_LUKS 1                            dc77069a-966f-4bae-a82e-edcaa6d7b485                  
  └─cryptlvm        LVM2_member LVM2 001                     u0qQ2l-Enud-c3Na-kQGv-TVLq-UUgn-XTiJNg                
    ├─vg0-root      ext4        1.0                          fdcf1f98-2627-4b9d-863d-32e42208bd3f     30,8G    16% /
    ├─vg0-swap      swap        1                            af2ce602-b84c-4bd8-8a3c-3a2746b8db62                  [SWAP]
    ├─vg0-vbox      ext4        1.0                          2d3481ef-9b53-4270-9b34-a8aa161e555c      6,4G     0% /vbox
    ├─vg0-shared    ext4        1.0                          cd233f95-1328-4905-b6cf-5db19da85201      4,6G     0% /home/shared
    └─vg0-encrypted                                                                                                
sr0                 iso9660     Joliet Extension ARCH_202502 2025-02-01-08-29-13-00 



Résultat de : cat /etc/passwd /etc/group /etc/fstab /etc/mtab :


                               
root:x:0:0::/root:/usr/bin/bash
bin:x:1:1::/:/usr/bin/nologin
daemon:x:2:2::/:/usr/bin/nologin
mail:x:8:12::/var/spool/mail:/usr/bin/nologin
ftp:x:14:11::/srv/ftp:/usr/bin/nologin
http:x:33:33::/srv/http:/usr/bin/nologin
nobody:x:65534:65534:Kernel Overflow User:/:/usr/bin/nologin
dbus:x:81:81:System Message Bus:/:/usr/bin/nologini
systemd-coredump:x:980:980:systemd Core Dumper:/:/usr/bin/nologin
systemd-network:x:979:979:systemd Network Management:/:/usr/bin/nologin
systemd-oom:x:978:978:systemd Userspace OOM Killer:/:/usr/bin/nologin
systemd-journal-remote:x:977:977:systemd Journal Remote:/:/usr/bin/nologin
systemd-resolve:x:976:976:systemd Resolver:/:/usr/bin/nologin
systemd-timesync:x:975:975:systemd Time Synchronization:/:/usr/bin/nologin
tss:x:974:974:tss user for tpm2:/:/usr/bin/nologin
uuidd:x:68:68:uuid daemon:/:/usr/bin/nologin
alpm:x:972:972:Arch Linux Package Management:/:/usr/bin/nologin
avahi:x:971:971:Avahi mDNS/DNS-SD daemon:/:/usr/bin/nologin
git:x:970:970:git daemon user:/:/usr/bin/git-shell
polkitd:x:102:102:User for polkitd:/:/usr/bin/nologin
rtkit:x:133:133:RealtimeKit:/proc:/usr/bin/nologin
sddm:x:969:969:SDDM Greeter Account:/var/lib/sddm:/usr/bin/nologin
collegue:x:1000:1000::/home/collegue:/bin/bash
fils:x:1001:1001::/home/fils:/bin/bash
root:x:0:root
sys:x:3:bin
mem:x:8:
ftp:x:11:
mail:x:12:
log:x:19:
smmsp:x:25:
proc:x:26:
games:x:50:
lock:x:54:
network:x:90:
floppy:x:94:
scanner:x:96:
power:x:98:
nobody:x:65534:
adm:x:999:daemon
wheel:x:998:collegue,fils
utmp:x:997:
audio:x:996:
disk:x:995:
input:x:994:
kmem:x:993:
kvm:x:992:
lp:x:991:
optical:x:990:
render:x:989:
sgx:x:988:
storage:x:987:
tty:x:5:
uucp:x:986:
video:x:985:
users:x:984:
groups:x:983:
systemd-journal:x:982:
rfkill:x:981:
bin:x:1:daemon
daemon:x:2:bin
http:x:33:
dbus:x:81:
systemd-coredump:x:980:
systemd-network:x:979:
systemd-oom:x:978:
systemd-journal-remote:x:977:
systemd-resolve:x:976:
systemd-timesync:x:975:
tss:x:974:
uuidd:x:68:
polkitd:x:102:
seat:x:973:
alpm:x:972:
avahi:x:971:
git:x:970:
rtkit:x:133:
sddm:x:969:
collegue:x:1000:
fils:x:1001:
partage:x:1002:collegue,fils
# Static information about the filesystems.
# See fstab(5) for details.

# <file system> <dir> <type> <options> <dump> <pass>
# /dev/mapper/vg0-root
UUID=fdcf1f98-2627-4b9d-863d-32e42208bd3f	/         	ext4      	rw,relatime0 1

# /dev/sda1
UUID=AE8D-CF7B      	/boot     	vfat      	rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro	0 2

# /dev/mapper/vg0-shared
UUID=cd233f95-1328-4905-b6cf-5db19da85201	/home/shared	ext4      	rw,relatime0 2

# /dev/mapper/vg0-vbox
UUID=2d3481ef-9b53-4270-9b34-a8aa161e555c	/vbox     	ext4      	rw,relatime0 2

# /dev/mapper/vg0-swap
UUID=af2ce602-b84c-4bd8-8a3c-3a2746b8db62	none      	swap      	defaults  	0 0

proc /proc proc rw,nosuid,nodev,noexec,relatime 0 0
sys /sys sysfs rw,nosuid,nodev,noexec,relatime 0 0
dev /dev devtmpfs rw,nosuid,relatime,size=1981784k,nr_inodes=495446,mode=755,inode64 0 0
run /run tmpfs rw,nosuid,nodev,relatime,mode=755,inode64 0 0
efivarfs /sys/firmware/efi/efivars efivarfs rw,nosuid,nodev,noexec,relatime 0 0
/dev/mapper/vg0-root / ext4 rw,relatime 0 0
securityfs /sys/kernel/security securityfs rw,nosuid,nodev,noexec,relatime 0 0
tmpfs /dev/shm tmpfs rw,nosuid,nodev,inode64 0 0
devpts /dev/pts devpts rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000 0 0
cgroup2 /sys/fs/cgroup cgroup2 rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot 0 0
pstore /sys/fs/pstore pstore rw,nosuid,nodev,noexec,relatime 0 0
bpf /sys/fs/bpf bpf rw,nosuid,nodev,noexec,relatime,mode=700 0 0
systemd-1 /proc/sys/fs/binfmt_misc autofs rw,relatime,fd=41,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=4206 0 0
tracefs /sys/kernel/tracing tracefs rw,nosuid,nodev,noexec,relatime 0 0
mqueue /dev/mqueue mqueue rw,nosuid,nodev,noexec,relatime 0 0
debugfs /sys/kernel/debug debugfs rw,nosuid,nodev,noexec,relatime 0 0
hugetlbfs /dev/hugepages hugetlbfs rw,nosuid,nodev,relatime,pagesize=2M 0 0
tmpfs /run/credentials/systemd-journald.service tmpfs ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap 0 0
fusectl /sys/fs/fuse/connections fusectl rw,nosuid,nodev,noexec,relatime 0 0
configfs /sys/kernel/config configfs rw,nosuid,nodev,noexec,relatime 0 0
tmpfs /run/credentials/systemd-cryptsetup@cryptlvm.service tmpfs ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap 0 0
tmpfs /tmp tmpfs rw,nosuid,nodev,nr_inodes=1048576,inode64 0 0
/dev/sda1 /boot vfat rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro 0 0
/dev/mapper/vg0-shared /home/shared ext4 rw,relatime 0 0
/dev/mapper/vg0-vbox /vbox ext4 rw,relatime 0 0
tmpfs /run/user/1000 tmpfs rw,nosuid,nodev,relatime,size=399016k,nr_inodes=99754,mode=700,uid=1000,gid=1000,inode64 0 0
portal /run/user/1000/doc fuse.portal rw,nosuid,nodev,relatime,user_id=1000,group_id=1000 0 0


Résultat de : echo $HOSTNAME :

archbox


Résultat de : grep -i installed /var/log/pacman.log :


lvm-libs (19.1.7-1)
[2025-02-14T12:49:08+0000] [ALPM] installed lm_sensors (1:3.6.0.r41.g31d1f125-3)
[2025-02-14T12:49:08+0000] [ALPM] installed spirv-tools (2024.4.rc2-1)
[2025-02-14T12:49:08+0000] [ALPM] installed default-cursors (3-1)
[2025-02-14T12:49:08+0000] [ALPM] installed wayland (1.23.1-1)
[2025-02-14T12:49:09+0000] [ALPM] installed mesa (1:24.3.4-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libglvnd (1.7.0-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libice (1.1.2-1)
[2025-02-14T12:49:09+0000] [ALPM] installed mtdev (1.1.7-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libevdev (1.13.3-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libgudev (238-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libwacom (2.14.0-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libinput (1.27.1-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libjpeg-turbo (3.1.0-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libproxy (0.5.9-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libsm (1.2.5-1)
[2025-02-14T12:49:09+0000] [ALPM] installed xkeyboard-config (2.44-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libxkbcommon (1.8.0-1)
[2025-02-14T12:49:09+0000] [ALPM] installed libxkbcommon-x11 (1.8.0-1)
[2025-02-14T12:49:09+0000] [ALPM] installed md4c (0.5.2-1)
[2025-02-14T12:49:09+0000] [ALPM] installed shared-mime-info (2.4-1)
[2025-02-14T12:49:09+0000] [ALPM] installed tslib (1.23-1)
[2025-02-14T12:49:10+0000] [ALPM] installed vulkan-headers (1:1.4.303-1)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util-renderutil (0.3.10-2)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util (0.4.1-2)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util-image (0.4.1-3)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util-cursor (0.1.5-1)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util-keysyms (0.4.1-5)
[2025-02-14T12:49:10+0000] [ALPM] installed xcb-util-wm (0.4.2-2)
[2025-02-14T12:49:10+0000] [ALPM] installed libxt (1.3.1-1)
[2025-02-14T12:49:10+0000] [ALPM] installed libxmu (1.2.1-1)
[2025-02-14T12:49:10+0000] [ALPM] installed xorg-xset (1.2.5-2)
[2025-02-14T12:49:10+0000] [ALPM] installed xorg-xprop (1.2.8-1)
[2025-02-14T12:49:10+0000] [ALPM] installed xdg-utils (1.2.1-1)
[2025-02-14T12:49:10+0000] [ALPM] installed qt6-translations (6.8.2-1)
[2025-02-14T12:49:11+0000] [ALPM] installed qt6-base (6.8.2-2)
[2025-02-14T12:49:13+0000] [ALPM] installed qt6-declarative (6.8.2-1)
[2025-02-14T12:49:13+0000] [ALPM] installed gnu-free-fonts (20120503-8)
[2025-02-14T12:49:13+0000] [ALPM] installed libepoxy (1.5.10-3)
[2025-02-14T12:49:13+0000] [ALPM] installed xorg-fonts-encodings (1.1.0-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libfontenc (1.1.8-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libxfont2 (2.0.7-1)
[2025-02-14T12:49:13+0000] [ALPM] installed pixman (0.44.2-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libxkbfile (1.1.3-1)
[2025-02-14T12:49:13+0000] [ALPM] installed xorg-xkbcomp (1.4.7-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libxrender (0.9.12-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libxrandr (1.5.4-1)
[2025-02-14T12:49:13+0000] [ALPM] installed xorg-setxkbmap (1.3.4-2)
[2025-02-14T12:49:13+0000] [ALPM] installed xorg-server-common (21.1.15-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libunwind (1.8.1-3)
[2025-02-14T12:49:13+0000] [ALPM] installed xf86-input-libinput (1.5.0-1)
[2025-02-14T12:49:13+0000] [ALPM] installed libxcvt (0.1.3-1)
[2025-02-14T12:49:14+0000] [ALPM] installed xorg-server (21.1.15-1)
[2025-02-14T12:49:14+0000] [ALPM] installed xorg-xauth (1.1.3-1)
[2025-02-14T12:49:17+0000] [ALPM] installed noto-fonts (1:2025.02.01-1)
[2025-02-14T12:49:18+0000] [ALPM] installed sddm (0.21.0-6)
[2025-02-14T12:49:18+0000] [ALPM] installed mpdecimal (4.0.0-2)
[2025-02-14T12:49:19+0000] [ALPM] installed python (3.13.1-1)
[2025-02-14T12:49:19+0000] [ALPM] installed reflector (2023-3)
[2025-02-14T12:49:19+0000] [ALPM] installed accountsservice (23.13.9-2)
[2025-02-14T12:49:19+0000] [ALPM] installed cairo (1.18.2-2)
[2025-02-14T12:49:19+0000] [ALPM] installed jbigkit (2.1-8)
[2025-02-14T12:49:20+0000] [ALPM] installed libtiff (4.7.0-1)
[2025-02-14T12:49:20+0000] [ALPM] installed gdk-pixbuf2 (2.42.12-2)
[2025-02-14T12:49:20+0000] [ALPM] installed dav1d (1.5.1-1)
[2025-02-14T12:49:20+0000] [ALPM] installed fribidi (1.0.16-1)
[2025-02-14T12:49:20+0000] [ALPM] installed libdatrie (0.2.13-4)
[2025-02-14T12:49:20+0000] [ALPM] installed libthai (0.1.29-3)
[2025-02-14T12:49:20+0000] [ALPM] installed libxft (2.3.8-2)
[2025-02-14T12:49:20+0000] [ALPM] installed pango (1:1.56.1-1)
[2025-02-14T12:49:22+0000] [ALPM] installed librsvg (2:2.59.2-1)
[2025-02-14T12:49:22+0000] [ALPM] installed libstemmer (2.2.0-2)
[2025-02-14T12:49:22+0000] [ALPM] installed libxmlb (0.3.21-1)
[2025-02-14T12:49:22+0000] [ALPM] installed libyaml (0.2.5-3)
[2025-02-14T12:49:22+0000] [ALPM] installed appstream (1.0.4-1)
[2025-02-14T12:49:22+0000] [ALPM] installed appstream-qt (1.0.4-1)
[2025-02-14T12:49:22+0000] [ALPM] installed kconfig (6.10.0-1)
[2025-02-14T12:49:22+0000] [ALPM] installed kcoreaddons (6.10.0-1)
[2025-02-14T12:49:22+0000] [ALPM] installed kcrash (6.10.0-1)
[2025-02-14T12:49:22+0000] [ALPM] installed kglobalaccel (6.10.0-1)
[2025-02-14T12:49:22+0000] [ALPM] installed iso-codes (4.17.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed ki18n (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed karchive (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed libxfixes (6.0.1-2)
[2025-02-14T12:49:23+0000] [ALPM] installed qt6-svg (6.8.2-1)
[2025-02-14T12:49:23+0000] [ALPM] installed qt6-wayland (6.8.2-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kwindowsystem (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed polkit-qt6 (0.200.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kauth (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kwidgetsaddons (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kbookmarks (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kguiaddons (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kcolorscheme (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kcodecs (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kcompletion (6.10.0-1)
[2025-02-14T12:49:23+0000] [ALPM] installed kdbusaddons (6.10.0-1)
[2025-02-14T12:49:27+0000] [ALPM] installed breeze-icons (6.10.0-1)
[2025-02-14T12:49:27+0000] [ALPM] installed kiconthemes (6.10.0-1)
[2025-02-14T12:49:27+0000] [ALPM] installed kitemviews (6.10.0-1)
[2025-02-14T12:49:28+0000] [ALPM] installed libogg (1.3.5-2)
[2025-02-14T12:49:28+0000] [ALPM] installed libvorbis (1.3.7-4)
[2025-02-14T12:49:28+0000] [ALPM] installed alsa-topology-conf (1.2.5.1-4)
[2025-02-14T12:49:28+0000] [ALPM] installed alsa-ucm-conf (1.2.13-2)
[2025-02-14T12:49:28+0000] [ALPM] installed alsa-lib (1.2.13-1)
[2025-02-14T12:49:29+0000] [ALPM] installed libasyncns (1:0.8+r3+g68cd5af-3)
[2025-02-14T12:49:29+0000] [ALPM] installed flac (1.4.3-2)
[2025-02-14T12:49:29+0000] [ALPM] installed lame (3.100-5)
[2025-02-14T12:49:29+0000] [ALPM] installed mpg123 (1.32.10-1)
[2025-02-14T12:49:29+0000] [ALPM] installed opus (1.5.2-1)
[2025-02-14T12:49:29+0000] [ALPM] installed libsndfile (1.2.2-2)
[2025-02-14T12:49:29+0000] [ALPM] installed libpulse (17.0+r43+g3e2bb8a1e-1)
[2025-02-14T12:49:29+0000] [ALPM] installed tdb (1.4.13-1)
[2025-02-14T12:49:29+0000] [ALPM] installed sound-theme-freedesktop (0.8-6)
[2025-02-14T12:49:30+0000] [ALPM] installed libcanberra (1:0.30+r2+gc0620e4-4)
[2025-02-14T12:49:30+0000] [ALPM] installed knotifications (6.10.0-1)
[2025-02-14T12:49:30+0000] [ALPM] installed kjobwidgets (6.10.0-1)
[2025-02-14T12:49:30+0000] [ALPM] installed kservice (6.10.0-1)
[2025-02-14T12:49:30+0000] [ALPM] installed qt6-shadertools (6.8.2-1)
[2025-02-14T12:49:30+0000] [ALPM] installed qt6-5compat (6.8.2-1)
[2025-02-14T12:49:30+0000] [ALPM] installed qca-qt6 (2.3.9-4)
[2025-02-14T12:49:30+0000] [ALPM] installed kwallet (6.10.0-1)
[2025-02-14T12:49:30+0000] [ALPM] installed libxslt (1.1.42-2)
[2025-02-14T12:49:30+0000] [ALPM] installed libplist (2.6.0-2)
[2025-02-14T12:49:30+0000] [ALPM] installed libimobiledevice-glue (1.3.1-1)
[2025-02-14T12:49:30+0000] [ALPM] installed libusbmuxd (2.1.0-1)
[2025-02-14T12:49:30+0000] [ALPM] installed libimobiledevice (1.3.0-15)
[2025-02-14T12:49:31+0000] [ALPM] installed media-player-info (26-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libatasmart (0.19-6)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed volume_key (0.3.12-10)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-crypto (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libbytesize (2.11-1)
[2025-02-14T12:49:31+0000] [ALPM] installed parted (3.6-2)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-fs (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed mdadm (4.4-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-mdraid (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-loop (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libnvme (1.11.1-2)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-nvme (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-part (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed libblockdev-swap (3.3.0-1)
[2025-02-14T12:49:31+0000] [ALPM] installed udisks2 (2.10.1-5)
[2025-02-14T12:49:31+0000] [ALPM] installed upower (1.90.7-1)
[2025-02-14T12:49:31+0000] [ALPM] installed solid (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kio (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kconfigwidgets (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kxmlgui (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kactivitymanagerd (6.3.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kirigami (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kcmutils (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed libutempter (1.2.1-4)
[2025-02-14T12:49:32+0000] [ALPM] installed kpty (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kdesu (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kparts (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kde-cli-tools (6.3.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kdeclarative (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kded (6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kholidays (1:6.10.0-1)
[2025-02-14T12:49:32+0000] [ALPM] installed kdnssd (6.10.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed kdsoap-qt6 (2.2.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed kdsoap-ws-discovery-client (0.4.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed aom (3.12.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed glslang (15.1.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed gsm (1.0.22-2)
[2025-02-14T12:49:33+0000] [ALPM] installed libsamplerate (0.2.2-3)
[2025-02-14T12:49:33+0000] [ALPM] installed jack2 (1.9.22-1)
[2025-02-14T12:49:33+0000] [ALPM] installed libunibreak (6.1-1)
[2025-02-14T12:49:33+0000] [ALPM] installed libass (0.17.3-1)
[2025-02-14T12:49:33+0000] [ALPM] installed libraw1394 (2.1.2-4)
[2025-02-14T12:49:33+0000] [ALPM] installed libavc1394 (0.5.4-6)
[2025-02-14T12:49:33+0000] [ALPM] installed libbluray (1.3.4-2)
[2025-02-14T12:49:33+0000] [ALPM] installed libbs2b (3.1.0-9)
[2025-02-14T12:49:33+0000] [ALPM] installed libdvdread (6.1.3-2)
[2025-02-14T12:49:33+0000] [ALPM] installed libdvdnav (6.1.1-2)
[2025-02-14T12:49:33+0000] [ALPM] installed libiec61883 (1.2.0-8)
[2025-02-14T12:49:33+0000] [ALPM] installed giflib (5.2.2-1)
[2025-02-14T12:49:33+0000] [ALPM] installed gperftools (2.16-1)
[2025-02-14T12:49:33+0000] [ALPM] installed highway (1.2.0-1)
[2025-02-14T12:49:33+0000] [ALPM] installed libjxl (0.11.1-1)
[2025-02-14T12:49:33+0000] [ALPM] installed libmodplug (0.8.9.0-6)
[2025-02-14T12:49:34+0000] [ALPM] installed portaudio (1:19.7.0-3)
[2025-02-14T12:49:34+0000] [ALPM] installed libopenmpt (0.7.13-1)
[2025-02-14T12:49:34+0000] [ALPM] installed vulkan-icd-loader (1.4.303-1)
[2025-02-14T12:49:34+0000] [ALPM] installed lcms2 (2.17-1)
[2025-02-14T12:49:34+0000] [ALPM] installed shaderc (2024.4-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libdovi (3.3.1-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libplacebo (7.349.0-4)
[2025-02-14T12:49:34+0000] [ALPM] installed libsoxr (0.1.3-4)
[2025-02-14T12:49:34+0000] [ALPM] installed libssh (0.11.1-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libtheora (1.1.1-6)
[2025-02-14T12:49:34+0000] [ALPM] installed libva (2.22.0-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libvdpau (1.5-3)
[2025-02-14T12:49:34+0000] [ALPM] installed libvpx (1.15.0-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libwebp (1.5.0-1)
[2025-02-14T12:49:34+0000] [ALPM] installed libxv (1.0.13-1)
[2025-02-14T12:49:34+0000] [ALPM] installed ocl-icd (2.3.2-2)
[2025-02-14T12:49:34+0000] [ALPM] installed libvpl (2.14.0-1)
[2025-02-14T12:49:34+0000] [ALPM] installed opencore-amr (0.1.6-2)
[2025-02-14T12:49:34+0000] [ALPM] installed openjpeg2 (2.5.3-1)
[2025-02-14T12:49:35+0000] [ALPM] installed rav1e (0.7.1-1)
[2025-02-14T12:49:35+0000] [ALPM] installed fftw (3.3.10-7)
[2025-02-14T12:49:35+0000] [ALPM] installed rubberband (4.0.0-1)
[2025-02-14T12:49:35+0000] [ALPM] installed libxcursor (1.2.3-1)
[2025-02-14T12:49:35+0000] [ALPM] installed hidapi (0.14.0-3)
[2025-02-14T12:49:35+0000] [ALPM] installed sdl3 (3.2.4-1)
[2025-02-14T12:49:35+0000] [ALPM] installed sdl2-compat (2.32.50-1)
[2025-02-14T12:49:35+0000] [ALPM] installed snappy (1.2.1-2)
[2025-02-14T12:49:35+0000] [ALPM] installed speexdsp (1.2.1-2)
[2025-02-14T12:49:35+0000] [ALPM] installed speex (1.2.1-2)
[2025-02-14T12:49:35+0000] [ALPM] installed srt (1.5.4-1)
[2025-02-14T12:49:35+0000] [ALPM] installed svt-av1 (2.3.0-1)
[2025-02-14T12:49:35+0000] [ALPM] installed hicolor-icon-theme (0.18-1)
[2025-02-14T12:49:36+0000] [ALPM] installed v4l-utils (1.28.1-2)
[2025-02-14T12:49:36+0000] [ALPM] installed zimg (3.0.5-1)
[2025-02-14T12:49:36+0000] [ALPM] installed vapoursynth (R70-2)
[2025-02-14T12:49:36+0000] [ALPM] installed vid.stab (1.1.1-2)
[2025-02-14T12:49:36+0000] [ALPM] installed vmaf (3.0.0-1)
[2025-02-14T12:49:36+0000] [ALPM] installed l-smash (2.14.5-4)
[2025-02-14T12:49:36+0000] [ALPM] installed x264 (3:0.164.r3108.31e19f9-2)
[2025-02-14T12:49:36+0000] [ALPM] installed x265 (4.0-1)
[2025-02-14T12:49:36+0000] [ALPM] installed xvidcore (1.3.7-3)
[2025-02-14T12:49:37+0000] [ALPM] installed ffmpeg (2:7.1-6)
[2025-02-14T12:49:37+0000] [ALPM] installed qt6-multimedia-ffmpeg (6.8.2-1)
[2025-02-14T12:49:37+0000] [ALPM] installed qt6-multimedia (6.8.2-1)
[2025-02-14T12:49:37+0000] [ALPM] installed qt6-speech (6.8.2-1)
[2025-02-14T12:49:37+0000] [ALPM] installed sonnet (6.10.0-1)
[2025-02-14T12:49:37+0000] [ALPM] installed ktextwidgets (6.10.0-1)
[2025-02-14T12:49:37+0000] [ALPM] installed libinih (58-1)
[2025-02-14T12:49:38+0000] [ALPM] installed exiv2 (0.28.4-1)
[2025-02-14T12:49:38+0000] [ALPM] installed libkexiv2 (24.12.2-1)
[2025-02-14T12:49:38+0000] [ALPM] installed libmtp (1.1.22-1)
[2025-02-14T12:49:38+0000] [ALPM] installed a52dec (0.8.0-2)
[2025-02-14T12:49:38+0000] [ALPM] installed gtest (1.15.2-1)
[2025-02-14T12:49:38+0000] [ALPM] installed abseil-cpp (20240722.1-1)
[2025-02-14T12:49:38+0000] [ALPM] installed aribb24 (1.0.3-4)
[2025-02-14T12:49:38+0000] [ALPM] installed faad2 (2.11.1-1)
[2025-02-14T12:49:38+0000] [ALPM] installed libmfx (23.2.2-3)
[2025-02-14T12:49:39+0000] [ALPM] installed ffmpeg4.4 (4.4.5-2)
[2025-02-14T12:49:39+0000] [ALPM] installed libdca (0.0.7-2)
[2025-02-14T12:49:39+0000] [ALPM] installed libdvbpsi (1:1.3.3-3)
[2025-02-14T12:49:39+0000] [ALPM] installed libidn (1.42-1)
[2025-02-14T12:49:39+0000] [ALPM] installed libmad (0.15.1b-10)
[2025-02-14T12:49:39+0000] [ALPM] installed libebml (1.4.5-1)
[2025-02-14T12:49:39+0000] [ALPM] installed libmatroska (1.7.1-2)
[2025-02-14T12:49:39+0000] [ALPM] installed libmpcdec (1:0.1+r475-6)
[2025-02-14T12:49:39+0000] [ALPM] installed libmpeg2 (0.5.1-10)
[2025-02-14T12:49:39+0000] [ALPM] installed libtar (1.2.20-7)
[2025-02-14T12:49:39+0000] [ALPM] installed libupnp (1.14.20-2)
[2025-02-14T12:49:39+0000] [ALPM] installed libvlc (3.0.21-12)
[2025-02-14T12:49:39+0000] [ALPM] installed libxinerama (1.1.5-2)
[2025-02-14T12:49:39+0000] [ALPM] installed libxpm (3.5.17-2)
[2025-02-14T12:49:40+0000] [ALPM] installed lua (5.4.7-1)
[2025-02-14T12:49:40+0000] [ALPM] installed libxi (1.8.2-1)
[2025-02-14T12:49:40+0000] [ALPM] installed qt5-translations (5.15.16-3)
[2025-02-14T12:49:42+0000] [ALPM] installed qt5-base (5.15.16+kde+r130-3)
[2025-02-14T12:49:42+0000] [ALPM] installed qt5-svg (5.15.16+kde+r5-3)
[2025-02-14T12:49:42+0000] [ALPM] installed qt5-x11extras (5.15.16-3)
[2025-02-14T12:49:42+0000] [ALPM] installed taglib (2.0.2-1)
[2025-02-14T12:49:44+0000] [ALPM] installed vlc (3.0.21-12)
[2025-02-14T12:49:44+0000] [ALPM] installed phonon-qt6-vlc (0.12.0-2)
[2025-02-14T12:49:44+0000] [ALPM] installed phonon-qt6 (4.12.0-4)
[2025-02-14T12:49:44+0000] [ALPM] installed plasma-activities (6.3.0-1)
[2025-02-14T12:49:44+0000] [ALPM] installed ripgrep (14.1.1-1)
[2025-02-14T12:49:44+0000] [ALPM] installed ripgrep-all (0.10.6-3)
[2025-02-14T12:49:44+0000] [ALPM] installed libmd (1.1.0-2)
[2025-02-14T12:49:44+0000] [ALPM] installed libbsd (0.12.2-2)
[2025-02-14T12:49:44+0000] [ALPM] installed libwbclient (2:4.21.3-1)
[2025-02-14T12:49:44+0000] [ALPM] installed talloc (2.4.3-1)
[2025-02-14T12:49:44+0000] [ALPM] installed cifs-utils (7.1-1)
[2025-02-14T12:49:44+0000] [ALPM] installed tevent (1:0.16.2-1)
[2025-02-14T12:49:44+0000] [ALPM] installed ldb (2:4.21.3-1)
[2025-02-14T12:49:45+0000] [ALPM] installed smbclient (2:4.21.3-1)
[2025-02-14T12:49:45+0000] [ALPM] installed syntax-highlighting (6.10.0-1)
[2025-02-14T12:49:45+0000] [ALPM] installed kio-extras (24.12.2-1)
[2025-02-14T12:49:46+0000] [ALPM] installed fuse-common (3.16.2-1)
[2025-02-14T12:49:46+0000] [ALPM] installed fuse3 (3.16.2-1)
[2025-02-14T12:49:46+0000] [ALPM] installed kio-fuse (5.1.0-3)
[2025-02-14T12:49:46+0000] [ALPM] installed kitemmodels (6.10.0-1)
[2025-02-14T12:49:46+0000] [ALPM] installed ksvg (6.10.0-1)
[2025-02-14T12:49:46+0000] [ALPM] installed kirigami-addons (1.7.0-1)
[2025-02-14T12:49:47+0000] [ALPM] installed attica (6.10.0-1)
[2025-02-14T12:49:47+0000] [ALPM] installed kpackage (6.10.0-1)
[2025-02-14T12:49:47+0000] [ALPM] installed syndication (6.10.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed knewstuff (6.10.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed knotifyconfig (6.10.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed libpipewire (1:1.2.7-1)
[2025-02-14T12:49:48+0000] [ALPM] installed kpipewire (6.3.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed krunner (6.10.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed kquickcharts (6.10.0-1)
[2025-02-14T12:49:48+0000] [ALPM] installed kidletime (6.10.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed layer-shell-qt (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed libkscreen (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed libplasma (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed kscreenlocker (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed kstatusnotifieritem (6.10.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed libksysguard (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed ksystemstats (6.3.0-1)
[2025-02-14T12:49:49+0000] [ALPM] installed editorconfig-core-c (0.12.9-1)
[2025-02-14T12:49:50+0000] [ALPM] installed ktexteditor (6.10.0-1)
[2025-02-14T12:49:50+0000] [ALPM] installed kunitconversion (6.10.0-1)
[2025-02-14T12:49:50+0000] [ALPM] installed kuserfeedback (6.10.0-1)
[2025-02-14T12:49:50+0000] [ALPM] installed kwayland (6.3.0-1)
[2025-02-14T12:49:50+0000] [ALPM] installed frameworkintegration (6.10.0-1)
[2025-02-14T12:49:50+0000] [ALPM] installed kdecoration (6.3.0-1)
[2025-02-14T12:49:51+0000] [ALPM] installed breeze (6.3.0-2)
[2025-02-14T12:49:51+0000] [ALPM] installed kglobalacceld (6.3.0-1)
[2025-02-14T12:49:51+0000] [ALPM] installed libdisplay-info (0.2.0-2)
[2025-02-14T12:49:51+0000] [ALPM] installed libei (1.3.0-1)
[2025-02-14T12:49:51+0000] [ALPM] installed libqaccessibilityclient-qt6 (0.6.0-1)
[2025-02-14T12:49:51+0000] [ALPM] installed libwireplumber (0.5.8-1)
[2025-02-14T12:49:51+0000] [ALPM] installed pipewire (1:1.2.7-1)
[2025-02-14T12:49:51+0000] [ALPM] installed wireplumber (0.5.8-1)
[2025-02-14T12:49:52+0000] [ALPM] installed pipewire-session-manager (1:1.2.7-1)
[2025-02-14T12:49:52+0000] [ALPM] installed qt6-sensors (6.8.2-1)
[2025-02-14T12:49:53+0000] [ALPM] installed qt6-tools (6.8.2-2)
[2025-02-14T12:49:53+0000] [ALPM] installed kwin (6.3.0-3)
[2025-02-14T12:49:54+0000] [ALPM] installed libqalculate (5.5.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed libxtst (1.2.5-1)
[2025-02-14T12:49:54+0000] [ALPM] installed milou (6.3.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed ocean-sound-theme (6.3.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed plasma-activities-stats (6.3.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed plasma5support (6.3.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed libdmtx (0.7.7-2)
[2025-02-14T12:49:54+0000] [ALPM] installed qrencode (4.1.1-3)
[2025-02-14T12:49:54+0000] [ALPM] installed zxing-cpp (2.3.0-4)
[2025-02-14T12:49:54+0000] [ALPM] installed prison (6.10.0-1)
[2025-02-14T12:49:54+0000] [ALPM] installed qt6-positioning (6.8.2-1)
[2025-02-14T12:49:54+0000] [ALPM] installed hunspell (1.7.2-2)
[2025-02-14T12:49:54+0000] [ALPM] installed qt6-virtualkeyboard (6.8.2-1)
[2025-02-14T12:49:54+0000] [ALPM] installed libxaw (1.0.16-1)
[2025-02-14T12:49:54+0000] [ALPM] installed xorg-xmessage (1.0.7-1)
[2025-02-14T12:49:54+0000] [ALPM] installed xorg-xrdb (1.2.2-2)
[2025-02-14T12:49:54+0000] [ALPM] installed libdecor (0.2.2-1)
[2025-02-14T12:49:54+0000] [ALPM] installed xorg-xwayland (24.1.5-1)
[2025-02-14T12:49:55+0000] [ALPM] installed qqc2-breeze-style (6.3.0-1)
[2025-02-14T12:49:55+0000] [ALPM] installed qqc2-desktop-style (6.10.0-1)
[2025-02-14T12:49:55+0000] [ALPM] installed ttf-hack (3.003-7)
[2025-02-14T12:49:55+0000] [ALPM] installed json-glib (1.10.6-1)
[2025-02-14T12:49:55+0000] [ALPM] installed rtkit (0.13-3)
[2025-02-14T12:49:55+0000] [ALPM] installed xdg-desktop-portal (1.18.4-2)
[2025-02-14T12:49:55+0000] [ALPM] installed xdg-desktop-portal-kde (6.3.0-1)
[2025-02-14T12:49:55+0000] [ALPM] installed plasma-integration (6.3.0-1)
[2025-02-14T12:49:58+0000] [ALPM] installed plasma-workspace (6.3.0-1)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprutils (0.5.0-1)
[2025-02-14T12:49:58+0000] [ALPM] installed pugixml (1.15-1)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprwayland-scanner (0.4.4-1)
[2025-02-14T12:49:58+0000] [ALPM] installed seatd (0.9.1-1)
[2025-02-14T12:49:58+0000] [ALPM] installed wayland-protocols (1.40-1)
[2025-02-14T12:49:58+0000] [ALPM] installed aquamarine (0.7.2-1)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprlang (0.6.0-5)
[2025-02-14T12:49:58+0000] [ALPM] installed libzip (1.11.2-1)
[2025-02-14T12:49:58+0000] [ALPM] installed tomlplusplus (3.4.0-1)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprcursor (0.1.11-3)
[2025-02-14T12:49:58+0000] [ALPM] installed libspng (0.7.4-2)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprgraphics (0.1.2-1)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprland-qt-support (0.1.0-4)
[2025-02-14T12:49:58+0000] [ALPM] installed hyprland-qtutils (0.1.3-4)
[2025-02-14T12:49:58+0000] [ALPM] installed libliftoff (0.5.0-1)
[2025-02-14T12:49:58+0000] [ALPM] installed libxcomposite (0.4.6-2)
[2025-02-14T12:49:58+0000] [ALPM] installed re2 (1:20240702-2)
[2025-02-14T12:49:58+0000] [ALPM] installed xcb-util-errors (1.0.1-2)
[2025-02-14T12:49:59+0000] [ALPM] installed hyprland (0.47.2-1)
[2025-02-14T12:49:59+0000] [ALPM] installed dconf (0.40.0-3)
[2025-02-14T12:50:00+0000] [ALPM] installed gsettings-system-schemas (47.1-1)
[2025-02-14T12:50:00+0000] [ALPM] installed adobe-source-code-pro-fonts (2.042u+1.062i+1.026vf-2)
[2025-02-14T12:50:00+0000] [ALPM] installed cantarell-fonts (1:0.303.1-2)
[2025-02-14T12:50:00+0000] [ALPM] installed gsettings-desktop-schemas (47.1-1)
[2025-02-14T12:50:00+0000] [ALPM] installed at-spi2-core (2.54.1-1)
[2025-02-14T12:50:00+0000] [ALPM] installed libsigc++ (2.12.1-1)
[2025-02-14T12:50:00+0000] [ALPM] installed glibmm (2.66.7-1)
[2025-02-14T12:50:00+0000] [ALPM] installed atkmm (2.28.4-1)
[2025-02-14T12:50:00+0000] [ALPM] installed cairomm (1.14.5-1)
[2025-02-14T12:50:00+0000] [ALPM] installed fmt (11.1.3-1)
[2025-02-14T12:50:01+0000] [ALPM] installed adwaita-icon-theme-legacy (46.2-3)
[2025-02-14T12:50:01+0000] [ALPM] installed adwaita-cursors (47.0-1)
[2025-02-14T12:50:01+0000] [ALPM] installed adwaita-icon-theme (47.0-1)
[2025-02-14T12:50:01+0000] [ALPM] installed desktop-file-utils (0.28-1)
[2025-02-14T12:50:01+0000] [ALPM] installed libcloudproviders (0.3.6-1)
[2025-02-14T12:50:01+0000] [ALPM] installed libcolord (1.4.7-2)
[2025-02-14T12:50:01+0000] [ALPM] installed libxdamage (1.1.6-2)
[2025-02-14T12:50:01+0000] [ALPM] installed glib-networking (1:2.80.1-1)
[2025-02-14T12:50:01+0000] [ALPM] installed libsoup3 (3.6.4-1)
[2025-02-14T12:50:01+0000] [ALPM] installed tinysparql (3.8.2-2)
[2025-02-14T12:50:01+0000] [ALPM] installed gtk-update-icon-cache (1:4.16.12-1)
[2025-02-14T12:50:02+0000] [ALPM] installed gtk3 (1:3.24.48-2)
[2025-02-14T12:50:02+0000] [ALPM] installed gtk-layer-shell (0.9.0-1)
[2025-02-14T12:50:02+0000] [ALPM] installed pangomm (2.46.4-1)
[2025-02-14T12:50:02+0000] [ALPM] installed gtkmm3 (3.24.9-1)
[2025-02-14T12:50:02+0000] [ALPM] installed jsoncpp (1.9.6-3)
[2025-02-14T12:50:02+0000] [ALPM] installed libdbusmenu-glib (16.04.0.r498-2)
[2025-02-14T12:50:02+0000] [ALPM] installed libdbusmenu-gtk3 (16.04.0.r498-2)
[2025-02-14T12:50:02+0000] [ALPM] installed libmpdclient (2.22-1)
[2025-02-14T12:50:03+0000] [ALPM] installed playerctl (2.4.1-4)
[2025-02-14T12:50:03+0000] [ALPM] installed sndio (1.10.0-1)
[2025-02-14T12:50:03+0000] [ALPM] installed spdlog (1.15.1-1)
[2025-02-14T12:50:03+0000] [ALPM] installed waybar (0.11.0-6)
[2025-02-14T12:52:13+0000] [ALPM-SCRIPTLET]     are supported and installed on your system.
[2025-02-14T13:53:53+0100] [ALPM] installed xf86-video-vesa (2.6.0-2)
[2025-02-14T13:53:53+0100] [ALPM] installed xorg-bdftopcf (1.1.2-1)
[2025-02-14T13:53:53+0100] [ALPM] installed libpipeline (1.5.8-1)
[2025-02-14T13:53:53+0100] [ALPM] installed less (1:668-1)
[2025-02-14T13:53:53+0100] [ALPM] installed man-db (2.13.0-1)
[2025-02-14T13:53:53+0100] [ALPM] installed xorg-docs (1.7.3-2)
[2025-02-14T13:53:53+0100] [ALPM] installed xorg-font-util (1.4.1-2)
[2025-02-14T13:53:53+0100] [ALPM] installed xorg-fonts-alias-100dpi (1.0.5-1)
[2025-02-14T13:53:54+0100] [ALPM] installed xorg-fonts-100dpi (1.0.4-3)
[2025-02-14T13:53:54+0100] [ALPM] installed xorg-fonts-alias-75dpi (1.0.5-1)
[2025-02-14T13:53:54+0100] [ALPM] installed xorg-fonts-75dpi (1.0.4-2)
[2025-02-14T13:53:54+0100] [ALPM] reinstalled xorg-fonts-encodings (1.1.0-1)
[2025-02-14T13:53:54+0100] [ALPM] installed xorg-iceauth (1.0.10-1)
[2025-02-14T13:53:54+0100] [ALPM] installed xorg-mkfontscale (1.2.3-1)
[2025-02-14T13:53:57+0100] [ALPM] reinstalled xorg-xkbcomp (1.4.7-1)
[2025-02-14T13:53:57+0100] [ALPM] reinstalled xorg-setxkbmap (1.3.4-2)
[2025-02-14T13:53:57+0100] [ALPM] reinstalled xorg-server-common (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled mesa (1:24.3.4-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-server (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-util-macros (1.20.2-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-server-devel (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-server-xephyr (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-server-xnest (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-xauth (1.1.3-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-server-xvfb (21.1.15-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-sessreg (1.1.3-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-smproxy (1.0.7-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-x11perf (1.7.0-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xbacklight (1.2.4-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xcmsdb (1.0.7-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xcursorgen (1.0.8-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xdpyinfo (1.3.4-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xdriinfo (1.0.7-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xev (1.2.6-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xgamma (1.0.7-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xhost (1.0.10-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xrandr (1.5.3-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xinput (1.6.4-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xkbevd (1.1.6-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xkbutils (1.0.6-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xkill (1.0.6-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xlsatoms (1.1.4-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xlsclients (1.1.5-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xmodmap (1.0.11-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xpr (1.2.0-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-xprop (1.2.8-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-xrdb (1.2.2-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xrefresh (1.1.0-1)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-xset (1.2.5-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xsetroot (1.1.3-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xvinfo (1.1.5-2)
[2025-02-14T13:53:58+0100] [ALPM] reinstalled xorg-xwayland (24.1.5-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xwd (1.0.9-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xwininfo (1.1.6-2)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xwud (1.0.7-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xorg-xinit (1.4.3-1)
[2025-02-14T13:53:58+0100] [ALPM] installed libxvmc (1.0.14-1)
[2025-02-14T13:53:58+0100] [ALPM] installed xf86-video-intel (1:2.99.917+923+gb74b67f0-2)
[2025-02-14T13:53:59+0100] [ALPM] installed vulkan-intel (1:24.3.4-1)
[2025-02-14T13:53:59+0100] [ALPM] reinstalled xdg-utils (1.2.1-1)
[2025-02-14T13:53:59+0100] [ALPM] reinstalled qt6-wayland (6.8.2-1)
[2025-02-14T13:54:00+0100] [ALPM] reinstalled hyprland (0.47.2-1)
[2025-02-14T13:54:00+0100] [ALPM] reinstalled waybar (0.11.0-6)
[2025-02-14T13:54:00+0100] [ALPM] installed startup-notification (0.12-8)
[2025-02-14T13:54:00+0100] [ALPM] installed xcb-imdkit (1.0.9-1)
[2025-02-14T13:54:00+0100] [ALPM] installed rofi (1.7.8-1)
[2025-02-14T13:54:00+0100] [ALPM] installed libutf8proc (2.10.0-1)
[2025-02-14T13:54:00+0100] [ALPM] installed fcft (3.1.10-1)
[2025-02-14T13:54:00+0100] [ALPM] installed foot (1.20.2-1)
[2025-02-14T13:54:00+0100] [ALPM] installed hyprpaper (0.7.4-4)
[2025-02-14T13:54:00+0100] [ALPM] installed libxss (1.2.4-2)
[2025-02-14T13:54:00+0100] [ALPM] installed mailcap (2.1.54-2)
[2025-02-14T13:54:00+0100] [ALPM] installed ttf-liberation (2.1.5-2)
[2025-02-14T13:54:03+0100] [ALPM] installed firefox (135.0-1)
[2025-02-14T13:54:03+0100] [ALPM] installed minizip (1:1.3.1-2)
[2025-02-14T13:54:07+0100] [ALPM] installed chromium (133.0.6943.98-1)
[2025-02-14T13:54:08+0100] [ALPM] installed neofetch (7.1.0-2)
[2025-02-14T13:54:08+0100] [ALPM] installed htop (3.3.0-3)
[2025-02-14T13:54:08+0100] [ALPM] installed btop (1.4.0-4)
[2025-02-14T13:54:08+0100] [ALPM] installed libappindicator-gtk3 (12.10.0.r298-4)
[2025-02-14T13:54:08+0100] [ALPM] installed openssh (9.9p1-2)
[2025-02-14T13:54:08+0100] [ALPM] installed gcr-4 (4.3.0-1)
[2025-02-14T13:54:08+0100] [ALPM] installed libnma-common (1.10.6-3)
[2025-02-14T13:54:08+0100] [ALPM] installed libnma (1.10.6-3)
[2025-02-14T13:54:08+0100] [ALPM] installed nm-connection-editor (1.36.0-1)
[2025-02-14T13:54:08+0100] [ALPM] installed network-manager-applet (1.36.0-1)
[2025-02-14T13:54:08+0100] [ALPM] reinstalled pipewire (1:1.2.7-1)
[2025-02-14T13:54:08+0100] [ALPM] installed sdbus-cpp (2.1.0-2)
[2025-02-14T13:54:08+0100] [ALPM] reinstalled xdg-desktop-portal (1.18.4-2)
[2025-02-14T13:54:08+0100] [ALPM] installed xdg-desktop-portal-hyprland (1.3.9-5)
[2025-02-14T13:54:08+0100] [ALPM] installed alsa-card-profiles (1:1.2.7-1)
[2025-02-14T13:54:08+0100] [ALPM] installed bluez-libs (5.79-1)
[2025-02-14T13:54:08+0100] [ALPM] installed libfdk-aac (2.0.3-1)
[2025-02-14T13:54:08+0100] [ALPM] installed libfreeaptx (0.1.1-2)
[2025-02-14T13:54:08+0100] [ALPM] installed liblc3 (1.1.3-1)
[2025-02-14T13:54:08+0100] [ALPM] installed libldac (2.0.2.3-2)
[2025-02-14T13:54:08+0100] [ALPM] installed serd (0.32.4-1)
[2025-02-14T13:54:08+0100] [ALPM] installed zix (0.6.2-1)
[2025-02-14T13:54:08+0100] [ALPM] installed sord (0.16.18-1)
[2025-02-14T13:54:08+0100] [ALPM] installed lv2 (1.18.10-1)
[2025-02-14T13:54:08+0100] [ALPM] installed sratom (0.6.18-1)
[2025-02-14T13:54:08+0100] [ALPM] installed lilv (0.24.26-1)
[2025-02-14T13:54:09+0100] [ALPM] installed libmysofa (1.3.3-1)
[2025-02-14T13:54:09+0100] [ALPM] installed sbc (2.0-2)
[2025-02-14T13:54:09+0100] [ALPM] installed webrtc-audio-processing-1 (1.3-4)
[2025-02-14T13:54:09+0100] [ALPM] installed pipewire-audio (1:1.2.7-1)
[2025-02-14T13:54:09+0100] [ALPM] reinstalled wireplumber (0.5.8-1)
[2025-02-14T13:54:09+0100] [ALPM] installed pipewire-pulse (1:1.2.7-1)
[2025-02-14T13:54:09+0100] [ALPM] installed qt5-declarative (5.15.16+kde+r22-3)
[2025-02-14T13:54:10+0100] [ALPM] installed qt5-wayland (5.15.16+kde+r59-3)
[2025-02-14T13:54:10+0100] [ALPM] installed polkit-kde-agent (6.3.0-1)
[2025-02-14T13:54:10+0100] [ALPM] installed dunst (1.12.1-1)
[2025-02-14T13:54:10+0100] [ALPM] installed xdg-user-dirs (0.18-2)
[2025-02-14T13:54:19+0100] [ALPM] reinstalled curl (8.12.1-1)
