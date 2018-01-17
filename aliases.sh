#/bin/bash

cp aliases $HOME/.aliases
echo "source $HOME/.aliases" >> $HOME/.bashrc
source ~/.bashrc
