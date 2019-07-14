#!/bin/bash

########################
#Check if user is root #
########################

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


#############################
# .bashrc config file		#
#############################

sudo cp ./newbashrc ~/.bashrc
sudo source ~/.bashrc

#############################
# install stuff script		#
#############################

chmod +x installstuff.bash
sudo ./installstuff.bash






