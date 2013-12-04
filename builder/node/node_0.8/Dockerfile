FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ADD nodejs.sh /etc/drone.d/

RUN /bin/bash -c ". /home/ubuntu/nvm/nvm.sh && nvm install v0.8.26"