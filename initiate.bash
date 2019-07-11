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

cp ./newbashrc ~/.bashrc
exec ~/.bashrc

#############################
# install stuff script		#
#############################

chmod +x installstuff.bash
./installstuff.bash






