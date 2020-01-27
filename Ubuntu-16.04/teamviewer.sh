#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
########################################################
# Downloading & Installing teamviewer for Ubuntu Version
sudo wget https://download.teamviewer.com/download/teamviewer_i386.deb -O /tmp/teamviewer_i386.deb
sudo dpkg -i /tmp/teamviewer*.deb
sudo apt-get -f install -y
echo "################ Team Viewer Installation Sucessfully ######################"


