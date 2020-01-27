#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
######################################################
# Downloading & Installing Java-1.8 for Ubuntu Version
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt -f install -y
sudo accept-license = "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true"
sudo echo "$accept-license" | sudo debconf-set-selections
sudo apt --assume-yes install oracle-java8-installer
sudo apt-get install oracle-java8-unlimited-jce-policy -y
echo "################ Java 1.8 Installation Sucessfully ######################"
