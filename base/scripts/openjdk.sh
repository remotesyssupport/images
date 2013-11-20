#!/bin/bash

# install openjdk7 by default
sudo apt-get -y install openjdk-7-jdk

# install commonly used Java build tools
sudo apt-get -y install ant ant-contrib ivy maven gradle

# install utility that allows us to switch JDK versions
sudo apt-get -y install default-jdk