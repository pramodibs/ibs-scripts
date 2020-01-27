#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :      Pramod Prajapati
########################################################
# Installing & Downloading Xrdp for Ubuntu Version
sudo apt-get update -y 
sudo apt-get install xrdp -y 
sudo apt-get install xfce4 -y 
sudo echo xfce4-session >~/.xsession
sudo service xrdp restart
echo "################ XRDP Installation Sucessfully ######################"
