#!/bin/sh

sudo apt install syslinux mtools wimtools

curl -L https://git.io/bootiso -O
chmod +x bootiso
sudo mv bootiso /usr/local/bin/
