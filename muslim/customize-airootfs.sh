#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### fake systemctl (for nosystemd)
ln -s true /bin/systemctl || true

### Install packages
apt install wget -y

echo "deb http://deb.librewolf.net bullseye main" | sudo tee /etc/apt/sources.list.d/librewolf.list
wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
apt update
apt install librewolf -y

### desktop-base package

### pardus lightdm greeter
wget https://github.com/muslimos/pardus-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb

### 17g installer
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

## Firefox latest User Installer
wget https://github.com/muslimos/debhane/raw/main/firefox_user_installer_0.1.0_amd64.deb

### AppImage launcher
wget https://github.com/muslimos/debhane/raw/main/appimagelauncher_2.2.0.deb

## QMPlay2 Video and Sound Player
wget https://github.com/muslimos/debhane/raw/main/qmplay2-22-10-23-amd64.deb

## Webapp Manager
wget https://github.com/muslimos/debhane/raw/main/webapp-manager_1.2.8_all.deb

## Foliate reader
wget https://github.com/muslimos/debhane/raw/main/foliate_2.6.4_all.deb

## Papirus-teal-icons
wget https://github.com/muslimos/debhane/raw/main/papirus-teal-icon-theme.deb

### System Monitoring Center
wget https://github.com/muslimos/debhane/raw/main/system-monitoring-center_1.39.1_all.deb

### Pardus package installer
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-package-installer/pardus-package-installer_0.5.0~Beta2_all.deb

apt install ./*.deb -yq --allow-downgrades
