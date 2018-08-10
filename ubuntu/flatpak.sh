#!/bin/sh

sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
