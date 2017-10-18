#!/bin/bash
# ksuperkey

# https://launchpad.net/~mehanik/+archive/ubuntu/ksuperkey

# ksuperkey allows you to open the application launcher in KDE Plasma Desktop using the Super key (also known as the "Windows key"). If you hold down the Super key it will still act as a modifier key, allowing you to use it for other keyboard shortcuts.

sudo add-apt-repository ppa:mehanik/ksuperkey 
sudo apt-get update
sudo apt-get install ksuperkey