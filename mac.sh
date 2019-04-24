#!/usr/bin/env bash

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Google Chrome and Firefox"
brew cask install google-chrome
brew cask install firefox

echo "Installing Visual Studio Code"
brew cask install visual-studio-code

echo "Installing MacVim"
brew install macvim

echo "Installing PostgreSQL and starting PostgreSQL service"
brew install postgresql
brew services start postgresql

echo "Installing NVM Node.js LTS"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm --version
nvm install --lts

echo "Installing Ruby Versioning Manager - RVM"
brew install gpg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
