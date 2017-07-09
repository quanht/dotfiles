#!/bin/bash

# this installation is for ubuntu 16.04

sudo apt-get install vim git tmux curl

# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g npm@latest

# -------clone github repos--------
mkdir ~/github
cd ~/github

# hosts file
git clone https://github.com/racaljk/hosts  
# append hosts/hosts to /etc/hosts
# then, you can google and happy

# dotfiles
git clone https://github.com/quanht/dotfiles

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# then, vimrc and install plugin
ln -s ~/github/dotfiles/.vimrc ~/.vimrc
# open vim, input :PluginInstal

# install tidy-html
sudo apt-get install cmake
git clone https://github.com/htacg/tidy-html5
cd build/cmake
cmake ../.. -DCMAKE_BUILD_TYPE=Release
make
sudo make install

# -------- end git repos ---------

# ------------------ start npm packages ---------------------
sudo npm install -g eslint csslint
