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
  brew install python3
  brew install golang
  brew install direnv
  brew cask install docker

  brew cask install docker
  sudo chsh -s /usr/local/bin/bash bjk
  cd ~/bin/setup/

	./bashmarks.sh
	./nvm.sh  
	./rust.sh  

fi
if [[ $system_type == "Linux" ]]; then 
	sudo apt-get install -y $(cat ~/.local/share/chezmoi/pkglist.txt | awk '{print $1}')
  cd ~/bin/setup/

	./bashmarks.sh
	./crystal.sh 
	./docker.sh 
	./go.sh  
	./hugo.sh 
	./lxd.sh 
	./neovim.sh 
	./nvm.sh  
	./rust.sh  
	./yarn.sh   
	./zig.sh

fi
source $HOME/.cargo/env
cargo install --force starship   

