#!/bin/bash

# https://github.com/seebi/dircolors-solarized

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/seebi/dircolors-solarized
cd dircolors-solarized

mkdir -p $HOME/.dircolors

cp dircolors.ansi-dark $HOME/.dircolors
eval `dircolors $HOME/.dircolors`

# cp dircolors.ansi-light $HOME/.dircolors
# eval `dircolors $HOME/.dircolors`

