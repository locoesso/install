#!/bin/bash

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/video/flash-player-npapi/pspec.xml
sudo eopkg it flash-player-npapi*.eopkg;sudo rm flash-player-npapi*.eopkg
