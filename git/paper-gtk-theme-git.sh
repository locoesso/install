#!/bin/bash

# https://github.com/snwh/paper-icon-theme

# sudo apt install autoconf automake pkg-config libgtk-3-dev git

mkdir -p $HOME/.git-install
cd $HOME/.git-install

sudo rm -rf /usr/share/themes/Paper

git clone https://github.com/snwh/paper-gtk-theme && cd paper-gtk-theme

./autogen.sh
sudo make install
