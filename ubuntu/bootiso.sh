#!/bin/sh

sudo apt install syslinux mtools

curl -L https://git.io/bootiso -O
chmod +x bootiso
sudo mv bootiso /usr/local/bin/
