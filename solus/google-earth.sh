#!/bin/bash

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/google-earth/pspec.xml
sudo eopkg it google-earth*.eopkg;sudo rm google-earth*.eopkg
