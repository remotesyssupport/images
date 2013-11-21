FROM bradrydzewski/base
ADD .dronerc /home/ubuntu/

RUN git clone git://github.com/creationix/nvm.git /home/ubuntu/nvm    && \
		. /home/ubuntu/nvm/nvm.sh                                     && \
		nvm install v0.10.22