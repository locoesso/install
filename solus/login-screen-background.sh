#!/bin/sh

sudo mkdir -p /etc/lightdm
echo "[Greeter]" | sudo tee -a /etc/lightdm/slick-greeter.conf
echo "background=/usr/share/backgrounds/solus/SolusFresh.png" | sudo tee -a /etc/lightdm/slick-greeter.conf

sudo nano /etc/lightdm/slick-greeter.conf
