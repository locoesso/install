#!/bin/sh

# https://www.microsoft.com/net/learn/get-started/linuxubuntu

# Ubuntu 17.10
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-artful-prod artful main" > /etc/apt/sources.list.d/dotnetdev.list'

# Ubuntu 16.04 / Linux Mint 18
# sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get apt-transport-https
sudo apt update
sudo apt install dotnet-sdk-2.1.4
