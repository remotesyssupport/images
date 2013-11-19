#!/bin/bash -e

# install virtual xserver for headless GUI testing
sudo apt-get -y install xvfb

# install init script and make executable
curl -s https://raw.github.com/drone/images/master/base/resources/etc/init.d/xvfb | sudo tee /etc/init.d/xvfb > /dev/null
sudo chmod +x /etc/init.d/xvfb