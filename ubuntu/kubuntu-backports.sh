#!/bin/sh
# https://launchpad.net/~kubuntu-ppa/+archive/ubuntu/backports

sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update
apt list --upgradable
