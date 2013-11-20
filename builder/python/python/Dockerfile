FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

RUN sudo easy_install virtualenv
RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes

# setup default virtualenv for python 2.7
RUN mkdir /home/ubuntu/virtualenv && \
		virtualenv --python=/usr/bin/python2.7 /home/ubuntu/virtualenv/python2.7 --system-site-packages && \
		. /home/ubuntu/virtualenv/python2.7/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest