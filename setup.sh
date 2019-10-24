#!/bin/bash 

cd "$HOME" || return 
system_type=$(uname -s)
if [[ $system_type == "Darwin" ]]; then
  echo "Hello Mac User!"
  echo "Installing Homebrew..."
  # install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # install the git from homebrew
  brew install git
fi
if [[ $system_type == "Linux" ]]; then 
  echo "Hello Linux User!"
  sudo apt update
  # make sure git is installed, not all installations have it by default
  sudo apt install -y git 
fi

# install chezmoi
curl -sfL https://git.io/chezmoi | sh

export PATH=$HOME/bin:$PATH

$HOME/bin/chezmoi init --apply --verbose git@github.com:bketelsen/dotfiles.git
