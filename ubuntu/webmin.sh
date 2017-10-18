#!/bin/bash

echo "********************"
echo "***** USE SUDO *****"
echo "********************"
read -p "Press any key..."

now=$(date +"%d-%m-%Y_%H.%M.%S")
sudo cp /etc/apt/sources.list /etc/apt/sources.list.$now

sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >>/etc/apt/sources.list

sudo wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo rm jcameron-key.asc

sudo apt update
sudo apt install webmin

sudo ufw allow 10000
