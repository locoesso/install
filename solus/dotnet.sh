#!/bin/sh

sudo eopkg install curl libunwind gettext
curl -sSL -o dotnet.tar.gz https://aka.ms/dotnet-sdk-2.0.0-linux-x64
mkdir -p ~/.dotnet && tar zxf dotnet.tar.gz -C ~/.dotnet
echo "export PATH=$PATH:$HOME/.dotnet" >$HOME/.profile
source $HOME/.profile
