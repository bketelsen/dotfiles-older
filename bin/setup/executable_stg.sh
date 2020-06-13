#!/bin/bash

pushd /tmp 
wget -O stgit-0.22.tar.gz https://github.com/ctmarinas/stgit/archive/v0.22.tar.gz
tar -xzvf stgit-0.22.tar.gz
cd stgit-0.22/
make all doc
#which python3
#sudo ln -s /usr/bin/python3 /usr/bin/python
sudo apt install asciidoc
make all doc
make install install-doc
cd ..
rm -rf stgit-0.22
rm stgit-0.22.tar.gz
popd
