#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################
#Download and Install zabbix agent on ubuntu 18.04 LTS
HOSTNAME=$(hostname)
sudo apt-get update
sudo apt-get install libcurl3 zabbix-agent -y
sudo sed -i '95 s/^/#/' /etc/zabbix/zabbix_agentd.conf
sudo sed -i '136 s/^/#/' /etc/zabbix/zabbix_agentd.conf
sudo sed -i '147 s/^/#/' /etc/zabbix/zabbix_agentd.conf
sudo sh -c "echo 'Server=172.20.20.30' >> /etc/zabbix/zabbix_agentd.conf"
sudo sh -c "echo 'ServerActive=172.20.20.30' >> /etc/zabbix/zabbix_agentd.conf" 
sudo -E sh -c "echo 'Hostname='$HOSTNAME'' | sudo tee -a /etc/zabbix/zabbix_agentd.conf >> /dev/null"
#sudo sh -c "echo 'Hostname=$HOSTNAME' >> /etc/zabbix/zabbix_agentd.conf"
sudo service zabbix-agent restart
echo "##################################################################################"
echo "############# Zabbix Agent has been installed successfully####################"
echo "##################################################################################"
