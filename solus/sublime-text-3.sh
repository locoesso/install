#!/bin/bash

# Sublime Text 3

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/sublime-text-3/pspec.xml
sudo eopkg it sublime*.eopkg;sudo rm sublime*.eopkg
