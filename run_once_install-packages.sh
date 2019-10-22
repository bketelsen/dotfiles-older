#!/bin/bash 

cd "$HOME" || return 
system_type=$(uname -s)
if [[ $system_type == "Darwin" ]]; then
	echo "> Mac" 
fi
if [[ $system_type == "Linux" ]]; then 
	sudo apt-get install -y $(cat ~/pkglist.txt | awk '{print $1}')
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
