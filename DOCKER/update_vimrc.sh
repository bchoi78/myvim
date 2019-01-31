#!/usr/bin/env bash

cd ~/.config/nvim
git pull origin master
vim +PlugUpdate +qall
vim +PlugInstall +qall
