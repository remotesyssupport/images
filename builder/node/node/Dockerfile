FROM bradrydzewski/base
ADD .dronerc /home/ubuntu/

RUN git clone git://github.com/creationix/nvm.git /home/ubuntu/nvm && \
		/bin/bash -c ". /home/ubuntu/nvm/nvm.sh && nvm install v0.10.22"