#!/bin/sh

# https://code.launchpad.net/~andreas-angerer89/+archive/ubuntu/sni-qt-patched

sudo add-apt-repository ppa:andreas-angerer89/sni-qt-patched
sudo apt update
sudo apt install sni-qt hardcode-tray
# sudo apt install sni-qt sni-qt:i386 hardcode-tray

echo "MEGAsync fix if using qt5ct, start megasync with:"
echo "QT_QPA_PLATFORMTHEME=''; megasync"
