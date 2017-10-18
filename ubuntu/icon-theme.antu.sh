#!/bin/bash

cd ~/
mkdir -p .icons
git clone https://github.com/lucasnota/Antu-U.git
mv ~/Antu-U/Antu/ ~/Antu-U/AntuDark/ ~/.icons
rm -rf  ~/Antu-U
