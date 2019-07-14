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

# Tmux
apt-get install tmux -y

# Sublime Text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update -y
apt-get install sublime-text


# pip3

apt-get install -y python3-pip



