#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh & Antigen and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
  /bin/sh -c "$(curl -L git.io/antigen > $HOME/antigen.zsh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Create a Sites directory
mkdir $HOME/Personal
mkdir $HOME/Work

# Clone Github repositories
$DOTFILES/clone.sh

# copy neovim config
cp -rf $DOTFILES/nvim $HOME/.config/

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos
