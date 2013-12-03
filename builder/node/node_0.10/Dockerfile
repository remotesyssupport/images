FROM bradrydzewski/nvm

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN /bin/bash -c ". /home/ubuntu/nvm/nvm.sh && nvm install v0.10.22"