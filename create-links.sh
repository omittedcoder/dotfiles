#!/bin/sh

LN_PATH=$(pwd)
LN_ARGS="--backup=t -s"

ln ${LN_ARGS} ${LN_PATH}/bash_aliases ~/.bash_aliases
mkdir -p ~/.config/fish
ln ${LN_ARGS} ${LN_PATH}/config.fish ~/.config/fish/config.fish
ln ${LN_ARGS} ${LN_PATH}/gitconfig ~/.gitconfig
ln ${LN_ARGS} ${LN_PATH}/vimrc ~/.vimrc
mkdir -p ~/.config/i3
ln ${LN_ARGS} ${LN_PATH}/i3/config_desktop.conf ~/.config/i3/config
ln ${LN_ARGS} ${LN_PATH}/i3/i3blocks_desktop.conf ~/.i3blocks.conf
mkdir -p ~/.config/picom
ln ${LN_ARGS} ${LN_PATH}/i3/picom.conf ~/.config/picom/picom.conf
