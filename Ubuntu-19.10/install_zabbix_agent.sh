#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################
#Download and Install zabbix agent on ubuntu 18.04 LTS
HOSTNAME=$(hostname)
sudo apt-get update
sudo apt-get install zabbix-agent -y
sudo sed -i '98 s/^/#/' /etc/zabbix/zabbix_agentd.conf
sudo sed -i '139 s/^/#/' /etc/zabbix/zabbix_agentd.conf
#sudo sed -i '150 s/^/#/' /etc/zabbix/zabbix_agentd.conf
sudo sh -c "echo 'Server=172.20.20.30' >> /etc/zabbix/zabbix_agentd.conf"
sudo sh -c "echo 'ServerActive=172.20.20.30' >> /etc/zabbix/zabbix_agentd.conf" 
sudo -E sh -c "echo 'Hostname='$HOSTNAME'' | sudo tee -a /etc/zabbix/zabbix_agentd.conf >> /dev/null"
sudo service zabbix-agent restart
echo "##################################################################################"
echo "############# Zabbix Agent has been installed successfully####################"
echo "##################################################################################"
