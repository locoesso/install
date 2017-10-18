#!/bin/bash

# https://github.com/cledoux/mate-terminal-colors-solarized

sudo apt install dconf-cli

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/cledoux/mate-terminal-colors-solarized.git
cd mate-terminal-colors-solarized
./install.sh

