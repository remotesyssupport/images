FROM bradrydzewski/python
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

# install python 2.7
RUN sudo apt-get update && sudo apt-get install python2.7 python2.7-dev

# setup default virtualenv for python 2.7
RUN virtualenv --python=/usr/bin/python2.7 /home/ubuntu/virtualenv/python2.7 --system-site-packages && \
		. /home/ubuntu/virtualenv/python2.7/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest