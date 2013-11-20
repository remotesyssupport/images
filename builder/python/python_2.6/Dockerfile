FROM bradrydzewski/python
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

# install python 2.6
RUN sudo apt-get update && sudo apt-get install python2.6 python2.6-dev

# setup default virtualenv for python 2.6
RUN mkdir /home/ubuntu/virtualenv && \
		virtualenv --python=/usr/bin/python2.6 /home/ubuntu/virtualenv/python2.6 --system-site-packages && \
		. /home/ubuntu/virtualenv/python2.6/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest