#!/bin/bash

sudo apt-get install git
sudo apt-get install ctags
for f in `pwd`/files/.[^.]*; do ln -s $f ~/`basename $f`; done
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "PluginInstall"
