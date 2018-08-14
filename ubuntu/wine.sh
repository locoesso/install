#!/bin/sh

sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

wget -nc https://dl.winehq.org/wine-builds/Release.key && sudo apt-key add Release.key

sudo apt update
apt search winehq
