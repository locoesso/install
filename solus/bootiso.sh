#!/bin/sh

# https://github.com/jsamr/bootiso

sudo eopkg it curl mtools

curl -L https://git.io/bootiso -O
chmod +x bootiso

sudo mv bootiso /usr/sbin
