#!/bin/sh

sudo sudo apt install openjdk-9 openjdk-9-jre-headless
sudo mkdir -p /opt/minecraft
sudo wget http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar -O /opt/minecraft/Minecraft.jar
sudo cp minecraft.desktop /usr/share/applications/


