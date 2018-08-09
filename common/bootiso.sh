#!/bin/sh

# https://github.com/jsamr/bootiso

curl -L https://git.io/bootiso -O
chmod +x bootiso

sudo mv bootiso /usr/sbin
