#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
########################################################
# Installing WPS Office for Package for Ubuntu Version
cd && wget -O wps-office.deb http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
sudo dpkg -i wps-office.deb
sudo apt-get -f install && rm wps-office.deb
wget -O web-office-fonts.deb http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i web-office-fonts.deb
echo "################ WPS Office Installation Sucessfully ######################"

