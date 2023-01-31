#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Install packages
apt install wget

wget https://github.com/muslimos/debhane/raw/main/17g-installer_1.0_all.deb
wget https://github.com/muslimos/debhane/raw/main/appimagelauncher_2.2.0.deb
wget https://github.com/muslimos/debhane/raw/main/qmplay2-22-10-23-amd64.deb
wget https://github.com/muslimos/debhane/raw/main/webapp-manager_1.2.8_all.deb
wget https://github.com/muslimos/debhane/raw/main/foliate_2.6.4_all.deb
wget https://github.com/muslimos/debhane/raw/main/papirus-teal-icon-theme.deb
wget https://github.com/muslimos/debhane/raw/main/muslim-grub-theme.deb
wget https://github.com/muslimos/debhane/raw/main/pardus-lightdm-greeter_0.0.3_all.deb
wget https://github.com/muslimos/debhane/raw/main/system-monitoring-center_1.40.0_all.deb
wget https://github.com/muslimos/debhane/raw/main/pardus-package-installer_0.5.0~Beta2_all.deb

apt install ./*.deb -yq --allow-downgrades
