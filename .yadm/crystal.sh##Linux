#!/bin/bash

curl -sSL https://dist.crystal-lang.org/apt/setup.sh | sudo bash
curl -sL "https://keybase.io/crystal/pgp_keys.asc" | sudo apt-key add -
echo "deb https://dist.crystal-lang.org/apt crystal main" | sudo tee /etc/apt/sources.list.d/crystal.list
sudo apt-get update
sudo apt-get install crystal

