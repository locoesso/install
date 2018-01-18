#!/bin/sh

# https://www.microsoft.com/net/learn/get-started/linuxubuntu

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Ubuntu 17.10
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-artful-prod artful main" > /etc/apt/sources.list.d/dotnetdev.list'

# Ubuntu 16.04 / Linux Mint 18

# sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'


# Install .NET SDK

# Update the products available for installation, then install the .NET SDK.
# In your command prompt, run the following commands:

sudo apt-get apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4
