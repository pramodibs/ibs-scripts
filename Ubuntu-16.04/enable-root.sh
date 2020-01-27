#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
########################################################
# Enable root for Ubuntu Version
sudo echo "greeter-show-manual-login=true " >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
sudo echo "tty -s && mesg n " >> /root/.profile
sed --in-place '/mesg n || true/d' /root/.profile
sudo passwd root
echo "################ root-enable Sucessfully ######################"
