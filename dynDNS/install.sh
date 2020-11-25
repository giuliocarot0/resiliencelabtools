#!/bin/bash

echo "#################Installing Process Begins#################"
echo 
echo "Wait while the script install the selected tool"
echo "Installing dynDNS update tool... "

sudo mkdir /opt/resiliencetools/
sudo cp src/dynDNS /opt/resiliencetools/dynDNS

echo "Setting permissions..."
sudo chmod 775 /opt/resiliencetools/dynDNS

echo "Setting ENV variables..."
echo 'export PATH="$PATH:/opt/resiliencetools/"' >>  ~/.bash_profile
export ~/.bash_profile

echo "Creating configuration file..."
sudo mkdir /etc/resiliencetools/
sudo cp src/dynDNS.conf /etc/resiliencetools/dynDNS.conf
sudo chmod 775 /etc/resiliencetools/dynDNS.conf

echo "#################Done#################"
