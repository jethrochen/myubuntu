#!/bin/bash

# set terminal colorfull
sed -i 's/xterm-color/xterm | xterm-color/g'

# set sourcelist
sudo -f cp sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

# install Monaco font
echo "Start install"
sudo mkdir -p /usr/share/fonts/truetype/custom
echo "Installing font"
sudo mv /fonts/Monaco_Linux.ttf /usr/share/fonts/truetype/custom/
sudo fc-cache -f -v
echo "Enjoy"

# set vimrc
ln -fs `pwd`/vimrc home/{$USER}/.vimrc
sudo ln -fs /home/{$USER}/.vimrc /root/.vimrc
sudo ln -fs /home/{$USER}/.vim /root/.vim

