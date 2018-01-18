#/bin/sh

sudo apt install fonts-powerline powerline python-powerline-doc
echo "
# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi
" >> $HOME/.bashrc

