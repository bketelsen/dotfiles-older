#!/bin/bash

# https://askubuntu.com/questions/622038/how-to-execute-all-scripts-in-a-path
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install  -y --no-install-recommends yarn 
