#!/bin/bash

mkdir tmpbashmarks
pushd tmpbashmarks
git clone git://github.com/huyng/bashmarks.git
cd bashmarks
make install
popd
rm -rf tmpbashmarks

