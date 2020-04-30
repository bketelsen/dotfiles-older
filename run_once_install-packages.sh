#!/bin/bash 

cd "$HOME" || return 
system_type=$(uname -s)
if [[ $system_type == "Darwin" ]]; then
	echo "> Mac" 
  # fix that zsh nonsense
  brew install bash
  brew install git
  brew install byobu
  brew install neovim
  
  brew install python
  pip install --upgrade setuptools
  pip install --upgrade pip
  brew install yarn
  brew install golang
  brew install direnv

  brew cask install docker
  brew cask install iterm2
  brew cask install docker
  brew install bash-completion


  defaults write com.apple.dock workspaces-auto-swoosh -bool NO
  defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
  defaults write com.apple.screencapture location /Users/bjk/Pictures/Screenshots


  git config --global core.excludesfile ~/.gitignore
  sudo chsh -s /usr/local/bin/bash bjk
  cd ~/bin/setup/

	./bashmarks.sh
	./nvm.sh  
	./rust.sh  
  ./unison.sh

fi
if [[ $system_type == "Linux" ]]; then 
	sudo apt-get install -y $(cat ~/.local/share/chezmoi/pkglist.txt | awk '{print $1}')
  cd ~/bin/setup/

	./nvm.sh  
	./yarn.sh   

fi
nvim --headless +PlugInstall +UpdateRemotePlugins +qall
