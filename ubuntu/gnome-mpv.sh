#!/bin/bash

sudo add-apt-repository -y ppa:xuzhen666/gnome-mpv
sudo apt update
# sudo apt-get install mpv
sudo apt install gnome-mpv
mkdir ~/.config/mpv
cp mpv.conf ~/.config/mpv/
