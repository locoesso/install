#!/bin/bash

# Google Chrome (beta)

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-beta/pspec.xml &&
sudo eopkg it google-chrome-*.eopkg && sudo rm  google-chrome-*.eopkg
