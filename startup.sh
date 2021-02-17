#Download nice default color schemes for iTerm
cd ~/Downloads
curl -o "Atom One Dark.itermcolors" https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Dark.itermcolors
curl -o "Atom One Light.itermcolors" https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Light.itermcolors

#Download .dotfile
#TODO: snapshot this or make a copy
cd ~
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.bash_profile
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.bash_prompt
curl -O https://raw.githubusercontent.com/nicolashery/mac-dev-setup/master/.aliases
#TODO gitignore
#TODO gitconfig

#Source the bash profile from on zsh startup
echo source ~/.bash_profile > ~/.zshenv

#Install developer tools
xcode-select --install

#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor

#Install some packages...
brew install git

#git clone the vim vundle and tabnine

#Install anaconda
brew install --cask miniconda
