#!/bin/sh

# https://www.microsoft.com/net/learn/get-started/linuxubuntu

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

# Install .NET SDK

# Update the products available for installation, then install the .NET SDK.
# In your command prompt, run the following commands:

sudo apt-get apt-transport-https
sudo apt update
apt search dotnet-sdk
