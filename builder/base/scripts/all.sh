#!/bin/bash

set -x
set -e

# update packages
sudo apt-get -qq update

# gcc and build tools
./gcc.sh
./build-essential.sh
./scons.sh

# install a ton of libraries
./libcurl.sh
./libffi.sh
./libgdbm.sh
./libmagick.sh
./libmemcache.sh
./libmysql.sh
./libncurses.sh
./libossp-uuid.sh
./libpq.sh
./libqt4.sh
./libreadline.sh
./libsqlite.sh
./libssl.sh
./libxml.sh
./libyaml.sh
./libzmq.sh
./zlib.sh

# database clients
./mysql-cli.sh


# WARNING: ITEMS BELOW WILL CHANGE OVER TIME

# install browsers
./chromium.sh
./firefox.sh
./chrome.sh
./phantomjs.sh

# install base languages
./openjdk.sh
./python.sh
./nodejs.sh
./ruby.sh
./golang.sh


# browser.sh   (chromium, chrome, firefox, phantomjs)
# compiler.sh  (gcc, go)
# lib.sh       (...)
# runtime.sh   (node, ruby, java, python, go)
# toolchain.sh (make, cmake)

exit 0
