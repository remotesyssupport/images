#!/bin/bash

# add the ubuntu PPA for Node
#sudo apt-get install software-properties-common
#sudo add-apt-repository --yes ppa:chris-lea/node.js
#sudo apt-get -qq update

# install latest stable version of nodejs
#sudo apt-get -y install nodejs

git clone git://github.com/creationix/nvm.git /home/ubuntu/nvm
. /home/ubuntu/nvm/nvm.sh
nvm install v0.10.22