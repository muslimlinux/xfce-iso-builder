#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### fake systemctl (for nosystemd)
ln -s true /bin/systemctl || true

### Install packages
apt install wget

### 17g installer
wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

### AppImage launcher and Pardus package installer
wget https://github.com/mobilturka/mt-repo/raw/main/deb/appimagelauncher_2.2.0.deb
wget http://depo.pardus.org.tr/pardus/pool/main/p/pardus-package-installer/pardus-package-installer_0.5.0~Beta2_all.deb
wget https://github.com/mobilturka/mt-repo/raw/main/deb/firefox_user_installer_0.1.0_amd64.deb

### Pardus lightdm greeter
wget https://github.com/muslimos/pardus-lightdm-greeter/releases/download/current/pardus-lightdm-greeter_0.0.1_all.deb

## QMPlay2 Video and Sound Player
wget https://github.com/mobilturka/mt-repo/raw/main/deb/qmplay2_22.10.23-1~par21_amd64.deb

## Webapp Manager
wget https://github.com/mobilturka/mt-repo/raw/main/deb/webapp-manager_1.2.8_all.deb

## Foliate reader
wget https://github.com/mobilturka/mt-repo/raw/main/deb/foliate_2.6.4_all.deb

### desktop-base and base-file packages
wget https://github.com/muslim-xfce/desktop-base/releases/download/current/desktop-base_9999-noupdate_all.deb

## Papirus-teal-icons
wget https://github.com/mobilturka/mt-repo/raw/main/deb/papirus-teal-icon-theme.deb

apt install ./*.deb -yq --allow-downgrades
