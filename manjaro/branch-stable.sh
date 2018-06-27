#/bin/sh

sudo pacman-mirrors --api --set-branch stable
sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syyu
