#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
ansible-playbook playbook.yml -i local
for f in `pwd`/files/.[^.]*; do ln -fs $f ~/`basename $f`; done
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c "PluginInstall"
