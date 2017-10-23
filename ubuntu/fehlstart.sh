#!/bin/sh

sudo apt install git libkeybinder-dev libgtk2.0-dev build-essential
cd $HOME
mkdir .git-install
cd .git-install
git clone https://gitlab.com/fehlstart/fehlstart.git
cd fehlstart.git
make
sudo cp fehlstart /usr/bin/
fehlstart --one-way
