#!/bin/sh

echo "Creating directories and files"

# Create directories
mkdir $HOME/Work

# work specific vars and such
touch $HOME/work.zsh

# symlinks files from the .dotfiles
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/aliases.zsh $HOME/aliases.zsh
ln -s $HOME/dotfiles/path.zsh $HOME/path.zsh
ln -s $HOME/dotfiles/nvim $HOME/.config
