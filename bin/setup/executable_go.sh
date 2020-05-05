#! /bin/bash
set -e
VERSION=1.14.2
# Delete existing Go installation
sudo rm -rf /usr/local/go
# Install Go in /usr/local
sudo mkdir -p /usr/local/go && curl -Ls https://storage.googleapis.com/golang/go$VERSION.linux-amd64.tar.gz | sudo tar xvzf - -C /usr/local/go --strip-components=1

