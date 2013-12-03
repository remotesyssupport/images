FROM bradrydzewski/virtualenv
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

# install pypy
RUN sudo add-apt-repository --yes ppa:pypy/ppa && \
		sudo apt-get -qq update && \
		sudo apt-get install pypy

# setup default virtualenv for pypy
RUN virtualenv --python=/usr/bin/pypy /home/ubuntu/virtualenv/pypy && \
		. /home/ubuntu/virtualenv/pypy/bin/activate && \
		pip install --use-mirrors nose && \
		pip install -U pytest