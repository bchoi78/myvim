#!/usr/bin/env bash

# RUN THIS IN ROOT
# Install the apt repos for nvim
apt-get install --assume-yes silversearcher-ag
sudo apt-get --assume-yes install software-properties-common
sudo apt-get --assume-yes install cmake
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install neovim
# sudo apt-get --assume-yes install python3-dev python3-pip
sudo apt-get --assume-yes install python-dev python-pip 

# Install python dependencies for nvim
yes | sudo pip install pynvim
