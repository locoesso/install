#!/bin/sh

sudo dnf group install –with-optional virtualization
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
