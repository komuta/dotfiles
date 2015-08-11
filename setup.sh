#!/bin/bash

DOTFILES=~/.dotfiles

sudo apt-get install zsh

cd $DOTFILES

git submodule update --init

ln -sf $DOTFILES/.zshrc ~/.zshrc
ln -sf $DOTFILES/.dircolors ~/.dircolors
chsh -s /usr/bin/zsh
