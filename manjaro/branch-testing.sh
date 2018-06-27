#/bin/sh

sudo pacman-mirrors --api --set-branch testing
sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syyu
