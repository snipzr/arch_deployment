# Installation Automatisée d'Arch Linux avec Hyprland

Ce projet est un script Bash permettant l'installation automatisée d'Arch Linux avec chiffrement LUKS, gestion des partitions en LVM et l'environnement de bureau Hyprland.

## Fonctionnalités

- **Partitionnement automatique** en GPT
- **Chiffrement du disque avec LUKS**
- **Gestion des volumes logiques avec LVM**
- **Installation et configuration de l'environnement de bureau Hyprland**
- **Configuration de deux utilisateurs (« collegue » et « fils »)**
- **Configuration réseau et services essentiels**
- **Mise en place d'un fond d'écran automatique**

## Prérequis

- Une clé USB bootable avec Arch Linux
- Une connexion Internet
- Un disque dur cible (par défaut, `/dev/sda`)

## Instructions d'installation

1. **Démarrez sur l'image d'installation d'Arch Linux**.
2. **Connectez-vous à Internet** avec une connexion filaire ou Wi-Fi.
3. **Téléchargez et exécutez le script** :
   
   ```bash
   curl -O https://raw.githubusercontent.com/snipzr/arch_deployment/main/install.sh
   chmod +x install.sh
   sudo ./install.sh
   ```
4. **Suivez l'installation** jusqu'à la fin. L'installation s'effectuera automatiquement et configurera l'environnement complet.
5. **Redémarrez votre système** une fois l'installation terminée.

## Configuration par défaut

- **Nom de la machine** : `archbox`
- **Utilisateurs** :
  - `collegue`
  - `fils`
- **Mot de passe par défaut** : `azerty123`
- **Fuseau horaire** : `Europe/Paris`
- **Langue** : `fr_FR.UTF-8`
- **Disposition clavier** : `fr-latin1`

## Packages installés

Le script installe les paquets essentiels, y compris :
- `base`, `base-devel`, `linux`, `linux-firmware`, `lvm2`, `grub`, `networkmanager`
- Environnement graphique : `hyprland`, `waybar`, `rofi`, `foot`, `hyprpaper`
- Navigateurs : `firefox`, `chromium`
- Outils : `neofetch`, `htop`, `btop`
- Audio : `pipewire`, `pipewire-pulse`, `wireplumber`

## Services activés

- `sddm` (gestionnaire de connexion graphique)
- `NetworkManager` (gestion du réseau)

## Capture d'écran

![](https://images6.alphacoders.com/706/706545.png)

## Licence

Ce projet est sous licence MIT. Vous pouvez le modifier et l'utiliser librement.

---

**Auteur :** [snipzr](https://github.com/snipzr)


