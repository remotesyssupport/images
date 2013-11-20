#!/bin/bash

sudo add-apt-repository -y ppa:gophers/go
sudo apt-get update
sudo apt-get -y install golang-stable

# make sure we can actually access the
# golang package directories:
chown -R ubuntu:ubuntu /usr/lib/go