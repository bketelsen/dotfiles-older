#!/bin/bash 

cd "$HOME" || return 
system_type=$(uname -s)
if [[ $system_type == "Darwin" ]]; then
  # install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if [[ $system_type == "Linux" ]]; then 
  echo "Hello Tux!"
fi

# install chezmoi
curl -sfL https://git.io/chezmoi | sh

