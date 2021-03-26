#!/bin/sh

# sudo eopkg it openjdk-8
sudo mkdir -p /opt/minecraft
sudo wget http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar -O /opt/minecraft/Minecraft.jar
sudo cp minecraft.desktop /usr/share/applications/
sudo update-desktop-database

