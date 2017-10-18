#!/bin/bash
# CPU-G

# CPU-G is an application that shows useful information about your hardware. 
# It collects and displays information about your CPU, RAM, Motherboard, 
# some general information about your system and more.

# https://launchpad.net/~cpug-devs/+archive/ppa

sudo add-apt-repository ppa:cpug-devs/ppa
sudo apt-get update
sudo apt-get install cpu-g
