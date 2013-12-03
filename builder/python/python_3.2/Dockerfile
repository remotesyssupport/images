FROM bradrydzewski/virtualenv
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

# install python 3.2
RUN sudo apt-get update && sudo apt-get install python3.2 python3.2-dev

# setup default virtualenv for python 3.2
RUN virtualenv --python=/usr/bin/python3.2 /home/ubuntu/virtualenv/python3.2 --system-site-packages && \
		. /home/ubuntu/virtualenv/python3.2/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest