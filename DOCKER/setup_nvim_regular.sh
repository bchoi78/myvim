#!/usr/bin/env bash

# RUN THIS IN NOT ROOT
# Pull the nvim configs
mkdir -p ~/.config
cd ~/.config
git clone https://github.com/bchoi78/myvim.git
mv ./myvim ./nvim

# Install plugins
vim +PlugInstall +qall
