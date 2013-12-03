FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

RUN whoami && git clone git://github.com/creationix/nvm.git /home/ubuntu/nvm && \
    chown -R ubuntu:ubuntu /home/ubuntu/nvm