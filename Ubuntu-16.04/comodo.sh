#!/bin/bash
########################################################
# Written to be used on Ubuntu 16.04 64 bits computers
# Written By    :      Pramod Prajapati

########################################################
# Downloading & Installing COMODO ANTIVIRUS for Ubuntu Version
wget http://cdn.download.comodo.com/cis/download/installs/linux/cav-linux_x64.deb#_ga=2.135382835.308718117.1513683863-1805346075.1513683863 -O /tmp/cav-linux_x64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/o/openssl098/libssl0.9.8_0.9.8o-7ubuntu3.2.14.04.1_amd64.deb -O /tmp/libssl0.9.8_0.9.8o-7ubuntu3.2.14.04.1_amd64.deb
sudo dpkg -i /tmp/libssl0.9.8_0.9.8o-7ubuntu3.2.14.04.1_amd64.deb
sudo apt-get -f install -y
sudo dpkg -i /tmp/cav-linux_x64.deb
sudo /opt/COMODO/post_setup.sh
echo "################ Comodo Installation Sucessfully ######################"
