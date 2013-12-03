FROM bradrydzewski/virtualenv
WORKDIR /home/ubuntu
USER ubuntu
ADD python.sh /etc/drone.d/

# install python 3.1
RUN sudo apt-get update && sudo apt-get install python3.1 python3.1-dev

# setup default virtualenv for python 3.1
RUN virtualenv --python=/usr/bin/python3.1 /home/ubuntu/virtualenv/python3.1 --system-site-packages

# NOTE: pypi seems to be incompatible with 3.1, so we don't pre-install any software