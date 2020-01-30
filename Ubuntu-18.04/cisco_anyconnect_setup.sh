#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################
# Downloading & Installing Cisco Any Connect for Ubuntu Version
sudo apt-get update
sudo apt-get install network-manager-openconnect-gnome openvpn -y
sudo service networking restart

echo "##################################################################################"
echo "############# Ciso Any connect has been installed successfully####################"
echo "##################################################################################"


