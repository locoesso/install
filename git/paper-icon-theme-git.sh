#!/bin/bash

# https://github.com/snwh/paper-icon-theme

# sudo apt install autoconf automake pkg-config libgtk-3-dev git

mkdir -p $HOME/.git-install
cd $HOME/.git-install

sudo rm -rf /usr/share/icons/Paper
sudo rm -rf /usr/share/icons/Paper-Mono-Dark

git clone https://github.com/snwh/paper-icon-theme && cd paper-icon-theme

./autogen.sh
sudo make install
