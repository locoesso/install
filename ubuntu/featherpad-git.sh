#!/bin/bash
sudo apt update
sudo apt install libqt5x11extras5-dev libqt5svg5-dev libx11-dev qt5-default build-essential git
cd /tmp
git clone https://github.com/tsujan/FeatherPad
cd FeatherPad
qmake && make
sudo make install
make distclean
