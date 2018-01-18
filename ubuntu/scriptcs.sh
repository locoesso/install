#!/bin/sh

sudo apt install unzip curl libxml2-utils uuid-runtime
bash <(curl -s https://raw.githubusercontent.com/scriptcs-contrib/svm/master/install/installer.sh) && export PATH="$HOME/.svm/bin:$HOME/.svm/shims/:$PATH"
