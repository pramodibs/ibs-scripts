#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :      Pramod  Prajapati
########################################################
# Downloading & Installing Owncloud Client for Ubuntu Version
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_15.04/ /' &gt;&gt; /etc/apt/sources.list.d/owncloud-client.list" 
sudo apt-get update 
sudo apt-get -f install -y 
sudo apt-get install owncloud-client -y
#sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_16.04/ /' > /etc/apt/sources.list.d/owncloud-client.list" -y
#sudo apt-get update
#sudo apt-get -f install -y
#sudo apt-get install owncloud-client -y
echo "################ Own cloud client Installation Sucessfully ######################"

