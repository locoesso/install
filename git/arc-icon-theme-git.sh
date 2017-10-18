#!/bin/bash

# https://github.com/horst3180/arc-icon-theme

sudo apt install autoconf automake pkg-config libgtk-3-dev git

mkdir -p $HOME/.git-install
cd $HOME/.git-install

sudo rm -rf /usr/share/icons/Arc

git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme

./autogen.sh --prefix=/usr
sudo make install
