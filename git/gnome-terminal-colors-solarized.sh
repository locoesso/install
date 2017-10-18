#!/bin/bash

# https://github.com/Anthony25/gnome-terminal-colors-solarized

sudo apt install dconf-cli

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh

