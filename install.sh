#!/usr/bin/env bash

# Install brew
echo "Install Homebre"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Clone the Repo
echo "Clone the Dotfiles Repo"
git clone https://github.com/dalssaso/dotfiles.git ~/.dotfiles

# Install brew bundle
echo "Enabling Homebrew Bundle"
brew tap homebrew/bundle

# Install brews
echo "Installing brews with Homebrew"
cd ~/.dotfiles
bash bin/application_installer.sh

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Linking the Files
echo "Link the .dotfiles"
rm -f .zshrc .gitconfig .tmux.conf
mkdir -p $HOME/.config
mkdir -p $HOME/.ssh
mkdir -p $HOME/Code
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/bin $HOME/.bin
ln -s $HOME/.dotfiles/.config/nvim $HOME/.config/nvim
cp -a $HOME/.dotfiles/ssh/config $HOME/.ssh/config

# Opening some files to be able to configure
open $HOME/.dotfiles/font/SourceCodePro-Regular.ttf
open $HOME/.dotfiles/iterm-themes/one-dark.itermcolors

sleep 30

# Run the OSX Defaults
bash $HOME/.dotfiles/.osx
