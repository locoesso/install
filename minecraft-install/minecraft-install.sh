#!/bin/bash

mv Minecraft.jar Minecraft.jar.BAK
wget http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
mkdir $HOME/.minecraft
sudo mkdir /usr/share/minecraft
sudo cp Minecraft.jar /usr/share/minecraft/minecraft.jar
sudo cp minecraft.svg /usr/share/pixmaps/
sudo cp minecraft-steam-grid.png /usr/share/pixmaps/
chmod a+x minecraft
sudo cp minecraft /usr/bin/
sudo cp minecraft.desktop /usr/share/applications/
