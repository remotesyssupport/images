#!/bin/bash

set -x
set -e

# set permissions on all files that we
# injected into the container (see DOCKERFILE)
chmod 440 /etc/sudoers
chown -R root:root /etc/sudoers
chmod +x /etc/init.d/*.sh

# update packages
sudo apt-get update

# install version control systems
./git.sh
./subversion.sh
./mercurial.sh
./bzr.sh

# install build tools
./autotools.sh
./build-essential.sh
./cmake.sh
./scons.sh

# install a ton of libraries
./libcurl.sh
./libffi.sh
./libgdbm.sh
./libmagick.sh
./libmemcache.sh
./libncurses.sh
./libossp-uuid.sh
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
./chromium.sh
./firefox.sh
./phantomjs.sh

exit 0
