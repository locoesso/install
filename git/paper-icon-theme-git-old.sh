#!/bin/bash

sudo apt install autoconf automake pkg-config libgtk-3-dev git

mkdir -p $HOME/.git-install
cd $HOME/.git-install
sudo rm -rf /usr/share/icons/Paper

git clone https://github.com/snwh/paper-icon-theme

cd paper-icon-theme
./autogen.sh
make
sudo make install

