FROM bradrydzewski/ubuntu
MAINTAINER Brad Rydzewski <brad@drone.io>

WORKDIR /home/ubuntu
USER ubuntu
ENV HOME /home/ubuntu
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LOGNAME ubuntu
ENV TERM xterm

ADD scripts /var/cache/drone/scripts
RUN cd /var/cache/drone/scripts && sudo chmod +x *.sh && ./all.sh