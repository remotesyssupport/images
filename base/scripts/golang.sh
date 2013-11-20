#!/bin/bash

# install dependencies
sudo apt-get -y install pkg-config

# download and install Go binaries
wget http://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz --quiet
sudo tar -C /usr/lib -xzf go1.1.2.linux-amd64.tar.gz
rm go1.1.2.linux-amd64.tar.gz

# ubuntu user must have access to the go
# standard library
sudo chown -R ubuntu:ubuntu /usr/lib/go