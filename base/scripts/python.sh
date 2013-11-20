#!/bin/bash

# install python 2.7, headers, setuptools, etc
sudo apt-get -y install python2.7 python-software-properties python-setuptools python-dev

# install pip and distribute
sudo easy_install pip
sudo pip install distribute --upgrade

# make sure the ubuntu user can add packages without sudo
sudo chown -R 1000:1000 /usr/local/lib/python2.7