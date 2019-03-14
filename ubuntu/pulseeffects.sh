#!/bin/sh

# https://github.com/wwmm/pulseeffects

sudo add-apt-repository ppa:mikhailnov/pulseeffects -y
sudo apt update
sudo apt install pulseeffects pulseaudio --install-recommends
