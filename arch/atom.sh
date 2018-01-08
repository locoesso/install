#!/bin/bash

sudo pacman -Syu atom python-pip flake8 autopep8
yaourt flake8-docstrings

apm install linter linter-flake8 atom-beautify minimap file-icons atom-clock open-in-browser autocomplete-python atom-runner browser-plus color-picker atom-material-ui atom-material-syntax atom-material-syntax-dark atom-material-syntax-light

#pip install flake8 --user
#pip install flake8-docstrings --user

#echo "http://www.marinamele.com/install-and-configure-atom-editor-for-python"
export PATH="$HOME/.local/bin:$PATH:$HOME/.scripts"

