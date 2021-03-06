#!/bin/bash

VIM_ROOT_DIR="$(readlink -f $(dirname $0)/..)"

rm -rf ~/.vim ~/.vimrc
ln -s "${VIM_ROOT_DIR}/vim" ~/.vim
ln -s "${VIM_ROOT_DIR}/vimrc" ~/.vimrc
cd "${VIM_ROOT_DIR}"
git submodule init
git submodule update
