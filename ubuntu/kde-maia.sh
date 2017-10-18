#!/bin/bash

cd /tmp
git clone https://github.com/manjaro/artwork-maia
cd /tmp/artwork-maia
mkdir build %% cd build
cmake ..
make
sudo make install
