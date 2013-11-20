FROM bradrydzewski/ubuntu
MAINTAINER Brad Rydzewski <brad@drone.io>
USER ubuntu
WORKDIR /home/ubuntu
ADD scripts /var/cache/drone/scripts
RUN cd /var/cache/drone/scripts && sudo chmod +x *.sh && ./all.sh