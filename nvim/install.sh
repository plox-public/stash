#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y make cmake build-essential ninja-build
pushd neovim
git clone https://github.com/neovim/neovim.git
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
popd
rm -rf neovim
cp -r . "$HOME/.config/nvim"
