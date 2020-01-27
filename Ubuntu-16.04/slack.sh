#!/bin/bash
#
###############################################
# Written to be used on 64 bits computers
# Written By 	: 	Pramod Prajapati
###############################################
rm /tmp/slack-desktop-2.8.2-amd64.deb
sudo wget http://downloads.slack-edge.com/linux_releases/slack-desktop-2.8.2-amd64.deb -O /tmp/slack-desktop-2.8.2-amd64.deb
sudo dpkg -i /tmp/slack-desktop-2.8.2-amd64.deb
echo "fixing hardcoded icon"
old="Icon=\/usr\/share\/pixmaps\/slack.png"
new="Icon=slack"
location="/usr/share/applications/slack.desktop"
sudo sed -i s/$old/$new/g $location
echo "##################### Slack Desktop Install Sucessfully ########################"
