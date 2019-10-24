#!/bin/bash 

cd "$HOME" || return 
system_type=$(uname -s)
if [[ $system_type == "Darwin" ]]; then
	echo "> Mac" 
  # fix that zsh nonsense
  brew install bash
  chsh -s /usr/local/bin/bash
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
cargo install starship   

