#!/usr/bin/env bash
# env-gather.sh - something to help load the configuration changes I have
# made as a user. So it will pull the configurations from the local system
# and copy it into this repo to update the changes that have been made

ROOTDIR="/home/stiles/Documents/stash"

# copy alacritty config
cp -r "$HOME/.config/alacritty" $ROOTDIR

# copy neovim config
cp -r "$HOME/.config/nvim" $ROOTDIR

# copy zellij config
cp -r "$HOME/.config/zellij" $ROOTDIR

