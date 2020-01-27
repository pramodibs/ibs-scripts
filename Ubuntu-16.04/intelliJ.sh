#!/bin/bash
########################################################
# Written to be used on Ubuntu 64 bits computers
# Written By    :       Pramod Prajapati
########################################################
# Downloading & Installing intelliJ for Ubuntu Version
wget http://git.impressicocrm.com/itsupport/IBS-Softs/raw/master/ideaIU-2019.2.tar.gz -O /tmp/ideaIU-2017.2.5.tar.gz
cd /tmp 
sudo tar -xvf ideaIU-2017.2.5.tar.gz -C ~/Documents/
cd ~/Documents/idea-IU-172.4343.14/bin/
sudo ./idea.sh
echo "################ IntelliJ Installation Sucessfully ######################"

