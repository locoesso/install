#!/bin/sh

sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install papirus-icon-theme libreoffice-style-papirus papirus-folders
papirus-folders -l --theme Papirus
echo "Example:
papirus-folders -C cyan --theme Papirus-Dark"
