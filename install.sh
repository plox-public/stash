#!/usr/bin/env bash

cp ./tmux.conf $HOME/.tmux.conf

if [[ ! -d "$HOME/.config" ]]; then
    mkdir -vp $HOME/.config;
fi

cp -r ./nvim "$HOME/.config/nvim"

./gitconfig.sh
./get-nvim.sh
