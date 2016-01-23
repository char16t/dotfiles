#!/bin/bash

sudo apt-get install ansible
for f in `pwd`/files/.[^.]*; do ln -fs $f ~/`basename $f`; done
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "PluginInstall"
