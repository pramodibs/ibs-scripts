#!/bin/bash
#
###############################################
# Written to be used on 64 bits computers
# Written By    :       Pramod Prajapati
###############################################
###############################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################

# Add 'kafka' user::
sudo useradd kafka -m
# Install Java::
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt -f install -y
sudo accept-license = "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true"
sudo echo "$accept-license" | sudo debconf-set-selections
sudo apt --assume-yes install oracle-java8-installer
# Install zookeeper::
sudo apt-get install zookeeperd -y 
#Install Gradle 2 or higher
sudo add-apt-repository ppa:cwchien/gradle -y
sudo apt-get update -y
sudo apt-get install gradle -y
# Install Kafka using Git Repo
cd /tmp/
sudo git clone https://github.com/apache/kafka.git
mv /tmp/kafka /usr/local
cd /usr/local/kafka
gradle
./gradlew jar
# ./gradlew jar -Pscala_version=2.11.12
# ./gradlew ~/Desktop/eclipse
sudo echo "delete.topic.enable = true " >> /usr/local/kafka/config/server.properites
