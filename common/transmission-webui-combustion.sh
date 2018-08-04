#!/bin/sh

# https://github.com/Secretmapper/combustion

# Prepare the paths
rm -r ~/.local/share/transmission/web/
mkdir -p ~/.local/share/transmission/web/ && cd ~/.local/share/transmission/web/

# Download and unzip the new theme into path ~/.combustion:
rm -f release.zip && wget https://github.com/Secretmapper/combustion/archive/release.zip && unzip release.zip;