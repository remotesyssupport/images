#!/bin/bash

set -x
set -e


# altered sudoers file to enable passwordless sudo
curl -s https://raw.github.com/drone/images/master/base/resources/etc/sudoers | sudo tee /etc/sudoers > /dev/null

# altered ssh config to disable strict ssh host checking
mkdir -p /home/ubuntu/.ssh/
curl -s https://raw.github.com/drone/images/master/base/resources/home/ubuntu/.ssh/config > /home/ubuntu/.ssh/config

# alter apt config to "force yes"
sudo mkdir -p /etc/apt/apt.conf.d
curl -s https://raw.github.com/drone/images/master/base/resources/etc/apt/apt.conf.d/90forceyes | sudo tee /etc/apt/apt.conf.d/90forceyes > /dev/null

# install gitconfig file to the default ubuntu user account
curl -s https://raw.github.com/drone/images/master/base/resources/home/ubuntu/.gitconfig > /home/ubuntu/.gitconfig

# update packages
sudo apt-get -qq update

# install version control systems
./git.sh
./subversion.sh
./mercurial.sh
./bzr.sh

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

# install xwindows server
./xserver.sh

# install browsers
# WARNING: THESE WILL CHANGE OVER TIME AND REQUIRE UPDATE
./chromium.sh
./firefox.sh
./chrome.sh
./phantomjs.sh

# install base languages
# NOTE: THESE SHOULDN'T CHANGE
./openjdk.sh
./python.sh

# WARNING: THESE WILL CHANGE OVER TIME AND REQUIRE UPDATE
./nodejs.sh
#./ruby.sh
./golang.sh

exit 0
