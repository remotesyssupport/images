#!/bin/bash
# see http://phantomjs.org/build.html

pushd /tmp

# install dependencies
sudo apt-get update
sudo apt-get install build-essential chrpath git-core libssl-dev libfontconfig1-dev

# clone the repository, compile and install
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 1.9
./build.sh
cd ..

# cleanup after ourselves
rm -rf phantomjs

popd