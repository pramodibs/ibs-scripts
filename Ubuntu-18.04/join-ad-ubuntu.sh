#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati 
######################################################
# Downloading & Installing join-ad for Ubuntu Version
sudo sed -i '12 s/^/#/' /etc/nsswitch.conf
sudo echo "hosts:       "files " "dns"  ""mdns4" >> /etc/nsswitch.conf
service networking restart
echo "172.20.20.12	git.impressicocrm.com" >> /etc/hosts
echo "172.20.20.5	mail.impressico.local" >> /etc/hosts
echo "nameserver 172.20.20.5" >>  /run/systemd/resolve/stub-resolv.conf
wget http://git.impressicocrm.com/vinod.kumar/Software/raw/master/centrify-suite-2017.3-deb7-x86_64.tgz -O /tmp/centrify-suite-2017.3-deb7-x86_64.tgz
mkdir /tmp/centrify && cd /tmp/centrify
tar -zvxf /tmp/centrify-suite-2017.3-deb7-x86_64.tgz -C /tmp/centrify
cd /tmp/centrify
sudo sed -i '3 s/^/#/' centrify-suite.cfg 
sudo sed -i '7 s/^/#/' centrify-suite.cfg
sudo sed -i '11,13 s/^/#/' centrify-suite.cfg
sudo sed -i '20 s/^/#/' centrify-suite.cfg
sed -i '3i ADCHECK="Y"' centrify-suite.cfg
sed -i '8i ADJOIN="Y"' centrify-suite.cfg
sed -i '13i DOMAIN="impressico.local"' centrify-suite.cfg
sed -i '14i USERID=skype' centrify-suite.cfg
sed -i '15i PASSWD="noida@123"' centrify-suite.cfg
sed -i '25i REBOOT="Y"' centrify-suite.cfg
echo "ADCHECK=Y" >> centrify-suite.cfg
echo "ADJOIN=N" >> centrify-suite.cfg
echo "DOMAIN=impressico.local" >> centrify-suite.cfg
echo "USERID=skype" >> centrify-suite.cfg
echo "PASSWD=noida@123" >> centrify-suite.cfg
echo "REBOOT=Y" >> centrify-suite.cfg
sudo sh install.sh --express
echo"Ad-has been joined sucessfully & system will reboot automatically "

