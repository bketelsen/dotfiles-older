#! /bin/bash
set -e
sudo rm -rf /usr/local/go
sudo mkdir -p /usr/local/go && curl -Ls https://storage.googleapis.com/golang/go1.13.7.linux-amd64.tar.gz | sudo tar xvzf - -C /usr/local/go --strip-components=1

