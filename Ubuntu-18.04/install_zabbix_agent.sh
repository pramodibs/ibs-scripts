#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################
#Download and Install zabbix agent on ubuntu 18.04 LTS

sudo apt-get install libcurl3
sudo apt-get install zabbix-agent
cd /etc/zabbix/
sudo zabbix_agentd.conf
sudo service zabbix-agent restart
 
