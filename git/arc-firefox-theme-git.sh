#!/bin/bash

sudo apt install autoconf automake pkg-config libgtk-3-dev git
mkdir -p $HOME/.git-install
cd $HOME/.git-install/arc-firefox-theme

sudo make uninstall
cd mkdir -p $HOME/.git-install

git clone https://github.com/horst3180/arc-firefox-theme && cd arc-firefox-theme

./autogen.sh --prefix=/usr
sudo make install

