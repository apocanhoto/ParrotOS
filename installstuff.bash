#!/bin/bash

########################
#Check if user is root #
########################

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


########################
#Install Thingys	   #
########################

# Vim

apt-get install -y vim

#Git

apt-get install -y git

#Sublime Text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update -y
apt-get install sublime-text







