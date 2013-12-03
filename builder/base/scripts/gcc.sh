#!/bin/bash -e

# installs the GNU C compiler
sudo apt-get -y install gcc clang

# the debian repository suggests we install autotools:
sudo apt-get -y install automake autoconf autogen libtool

# the debian repository also recommends we install these:
sudo apt-get -y install make cmake gdb bison unzip flex