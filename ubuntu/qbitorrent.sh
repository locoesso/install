#!/bin/bash
# qbittorrent

# The qBittorrent project aims to provide a Free Software alternative to µtorrent. Additionally, qBittorrent runs and provides the same features on all major platforms (Linux, Mac OS X, Windows, OS/2, FreeBSD).
# qBittorrent is based on Qt4 toolkit and libtorrent-rasterbar.
# qBittorrent is developed by volunteers on their spare time. If you like this piece of software, please make a donation and help it survive.

# http://www.qbittorrent.org/index.php
# https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-stable
# https://launchpad.net/~qbittorrent-team/+archive/ubuntu/qbittorrent-unstable

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install qbittorrent
