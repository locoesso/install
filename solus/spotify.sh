#!/bin/bash

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/spotify/pspec.xml
sudo eopkg it spotify*.eopkg;sudo rm spotify*.eopkg
