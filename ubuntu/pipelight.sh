#!/bin/bash
# pipelight

# Silverlight

sudo add-apt-repository ppa:pipelight/stable
sudo apt-get update
sudo apt-get install --install-recommends pipelight-multi
sudo pipelight-plugin --update
sudo pipelight-plugin --enable silverlight
echo
echo Update plugins
echo sudo pipelight-plugin --update
echo sudo pipelight-plugin --create-mozilla-plugins
