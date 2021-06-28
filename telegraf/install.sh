#!/bin/bash
sudo apt update
sudo apt install gnupg2 -y
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/ubuntu ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt update
sudo apt install -y telegraf
wget https://raw.githubusercontent.com/a20034294/ubuntu2004_setup/master/telegraf/telegraf.conf
sudo mv ./telegraf.conf /etc/telegraf/telegraf.conf
sudo systemctl restart telegraf
