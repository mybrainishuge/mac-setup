#!/bin/bash

# UNTESTED WORK IN PROGRESS

echo Executing Mac setup phase 01

echo Installing Oh My ZSH...
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Need to find best way to re-source the terminal from within this script
. ~/.zshrc

echo Installing Homebrew...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

. ~/.zshrc

echo Installing desktop applications...
brew cask install 1password appcleaner docker dropbox firefox franz google-chrome iterm2 onyx postman sequel-pro skitch spotify visual-studio-code zoomus

echo Installing terminal utilities...
brew install awscli git mysql node redis pyenv

read -p "Please enter something?" out
echo "$out"
