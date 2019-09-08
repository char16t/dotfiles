#!/bin/bash

dotfiles=(`find ${HOME}/dotfiles/files/* | grep -i "\.*$"`)
dir="${HOME}/dotfiles/files"

for dotfile in "${dotfiles[@]}";do
    ln -sfv "${dotfile}" ~/.$(basename "${dotfile}")
done
