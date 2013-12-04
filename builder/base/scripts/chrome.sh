#!/bin/bash -e
# Installs the Google Chrome Browser (unstable) to /usr/bin/google-chrome

# update apt to include Google repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update

# install chrome unstable
#sudo apt-get -y install google-chrome-stable

# install chrome driver
wget http://chromedriver.storage.googleapis.com/2.7/chromedriver_linux64.zip --quiet
unzip chromedriver_linux64.zip
sudo install -t /usr/local/bin chromedriver
rm chromedriver_linux64.zip