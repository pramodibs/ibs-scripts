#!/bin/bash
#
#################################################
# Written to be used on x64 & x86 bits Computers
# Written by  Pramod Prajapati 
#################################################
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.

# Installing & Downloading remmina for Ubuntu Version 
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next -y
sudo apt-get update -y
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard -y
echo "############ Remmina Installation Sucessfully#################"

