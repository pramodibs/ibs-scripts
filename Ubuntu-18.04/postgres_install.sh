#!/bin/bash
########################################################
# Written to be used on 64 bits computers
# Written By    :     Pramod Prajapati
######################################################
#Download and Install postgre sql database and phpPgAdmin on ubuntu 18.04 LTS

sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib php-pgsql phppgadmin -y
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'welcome@123';"
#CREATE ROLE username WITH LOGIN CREATEDB ENCRYPTED PASSWORD 'password';
#echo '$conf['extra_login_security'] = false;' >> /etc/phppgadmin/config.inc.php
sudo sed -i '93 s/^/#/' /etc/phppgadmin/config.inc.php
sudo sed -i '11 s/^/#/' /etc/apache2/conf-enabled/phppgadmin.conf
sudo service apache2 restart
sudo service postgresql restart
echo "### postgress and phpPgAdmin has been sucessfully install. please use url http://localhost<ip>/phppgadmin to login "
