#!/bin/bash

# https://github.com/snwh/moka-icon-theme

sudo apt install inkscape python3

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/moka-project/moka-icon-theme.git

cd $HOME/.git-install/moka-icon-theme
bash autogen.sh
make
sudo make install
