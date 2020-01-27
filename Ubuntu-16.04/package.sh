#!/bin/bash
#######################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
########################################################
########################################################
########################################################

# Installing Required Package for Ubuntu Version
sudo apt-get update -y
sudo apt-get -f install -y
sudo apt-get install openssh-server -y
sudo apt-get install net-tools -y
sudo apt-get install network-manager* -y
sudo apt-get install vim -y
sudo apt-get install alsa-base pulseaudio -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update; sudo apt install git -y
sudo apt-get install openssh-server -y
sudo apt-get update -y
sudo apt-get install maven -y
sudo alsa force-reload
mkdir -p ~/Documents/Source-Code
sudo apt-get install libc6:i386 libx11-6:i386 libncurses5:i386 libstdc++6:i386 -y
sudo apt-get install lib32ncurses5 lib32z1 -y
sudo echo "%admin-it ALL=(ALL:ALL) ALL" >> /etc/sudoers
#sudo echo "192.168.0.1       "icloud.impressico.local" " >> /etc/hosts
#sudo echo "192.168.0.11       "impressico.local" " >> /etc/hosts
#sudo echo "192.168.0.68       "hrms.impressico.local" " >> /etc/hosts
#sudo echo "192.168.0.21       "svn.impressico.in" " >> /etc/hosts
sudo echo "172.20.20.12       "git.impressicocrm.com" " >> /etc/hosts
#sudo echo "192.168.0.7       "chef.impressico.local" " >> /etc/hosts
echo "################ openssh-vim-gitupdate-alsa-lib Installation Sucessfully ######################"
