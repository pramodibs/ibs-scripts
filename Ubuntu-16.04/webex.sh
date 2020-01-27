#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
######################################################
# Downloading & Installing ciscowebex for Ubuntu Version
sudo apt-get install firefox:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libxtst6:i386 -y
wget http://git.impressicocrm.com/vinod.kumar/Software/raw/master/jre-8u181-linux-i586.tar.gz -O /tmp/jre-8u181-linux-i586.tar.gz
mkdir ~/32bit && cd ~/32bit
tar -zvxf /tmp/jre-8u181-linux-i586.tar.gz
mkdir ~/.mozilla/plugins
ln -vs ~/32bit/jre1.8.0_181/lib/i386/libnpjp2.so ~/.mozilla/plugins/
## Thanks You ##
