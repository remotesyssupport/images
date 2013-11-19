#!/bin/bash
# see http://phantomjs.org/build.html
set -e

pushd /tmp

# install dependencies
sudo apt-get update
sudo apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev

# download phantomjs and decompress
wget https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2
tar xjf phantomjs-1.9.2-linux-x86_64.tar.bz2

# install binary
sudo install -t /usr/local/bin phantomjs-1.9.2-linux-x86_64/bin/phantomjs

# cleanup after ourselves
rm -rf phantomjs-1.9.2-linux-x86_64
rm phantomjs-1.9.2-linux-x86_64.tar.bz2

popd