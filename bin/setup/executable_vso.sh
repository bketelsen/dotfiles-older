#!/bin/bash

sudo curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository https://packages.microsoft.com/ubuntu/18.04/prod/
sudo apt-get update
sudo apt-get install vso
