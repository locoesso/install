#!/bin/sh

# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'
git config --global user.name "xxx" 
git config --global user.email xxx@xxx.com
git config --global core.editor nano
