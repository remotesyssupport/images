#!/bin/bash

# add the ubuntu PPA for Node
sudo apt-get install software-properties-common
sudo add-apt-repository --yes ppa:chris-lea/node.js
sudo apt-get -qq update

# install latest stable version of nodejs
sudo apt-get -y install nodejs