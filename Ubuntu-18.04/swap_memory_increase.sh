#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
# Date		:     25-Feb-2020
######################################################
# It will increase the swap memory to 16GB on Ubuntu Version
sudo swapoff -a
sudo fallocate -l 16G /swap
sudo mkswap /swap
sudo swapon /swap
#to varify run sudo swapon --show and free -h or swapon -s
#make an entry in fstab file for permanent mount while restart the system
#before making any changes please make a backup file
sudo cp /etc/fstab /etc/fstab.bak
echo '/swap none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
sudo sysctl vm.vfs_cache_pressure=50

### 
