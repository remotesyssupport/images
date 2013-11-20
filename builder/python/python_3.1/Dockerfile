FROM bradrydzewski/python
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

# install python 3.1
RUN sudo apt-get update && sudo apt-get install python3.1 python3.1-dev

# setup default virtualenv for python 3.1
RUN mkdir /home/ubuntu/virtualenv && \
		virtualenv --python=/usr/bin/python3.1 /home/ubuntu/virtualenv/python3.1 --system-site-packages && \
		. /home/ubuntu/virtualenv/python3.1/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest