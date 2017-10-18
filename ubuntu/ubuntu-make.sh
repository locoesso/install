#!/bin/bash

sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install ubuntu-make

umake ide -h

echo "
PyCharm:

umake ide pycharm

"

