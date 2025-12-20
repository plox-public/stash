#!/usr/bin/env bash

cp ./tmux.conf $HOME/.tmux.conf

if [[ ! -d "$HOME/.config" ]]; then
    mkdir -vp $HOME/.config;
fi

if [[ -d $HOME/.config/nvim ]]; then
    echo "replace nvim config? y/n"
    read resp
    if [ $resp = "y" ]; then
        rm -rf $HOME/.config/nvim
        cp -r ./nvim "$HOME/.config/nvim"
    fi
fi

./gitconfig.sh
./get-nvim.sh
