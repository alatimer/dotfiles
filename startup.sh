#Inspired by: https://github.com/nicolashery/mac-dev-setup

#Download nice default color schemes for iTerm
cd ~/Downloads
curl -o "Atom One Dark.itermcolors" https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Dark.itermcolors
curl -o "Atom One Light.itermcolors" https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Light.itermcolors

#Externally, download iterm and set preferences, including colors

#Install developer tools
xcode-select --install

#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor

#Install some packages...
brew install git
brew install docker
brew install --cask miniconda

#Initialize conda
#Make sure this change made to ~/.zshenv, not bash
conda init

#git clone the dotfiles repo and vim vundle and tabnine
git clone https://github.com/alatimer/dotfiles.git ~/Code/dotfiles/
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Tell zsh to look in dotfiles repo for configs
echo ZDOTDIR=$HOME/Code/dotfiles/ > ~/.zshenv
