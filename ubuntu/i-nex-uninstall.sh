#!/bin/bash

sudo add-apt-repository –remove ppa:i-nex-development-team/daily
sudo add-apt-repository –remove ppa:nemh/gambas3
sudo apt-get update
sudo apt-get purge i-nex
