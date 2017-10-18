#!/bin/bash

# sudo apt install dropbox

ln -s $HOME/Dropbox/Linux/shared/ubuntu-after $HOME/.after
ln -s $HOME/Dropbox/Linux/shared/ubuntu-install $HOME/.install
ln -s $HOME/Dropbox/Linux/shared/ubuntu-scripts $HOME/.scripts
echo "export PATH="$PATH:$HOME/.scripts"" >$HOME/.profile
