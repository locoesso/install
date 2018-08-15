#!/bin/bash

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
apt search nvidia-drivers
echo "Graphics drivers PPA added. No drivers installed."
