#!/bin/bash

# Google Chrome (stable)

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml &&
sudo eopkg it google-chrome-*.eopkg && sudo rm  google-chrome-*.eopkg