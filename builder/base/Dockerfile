FROM bradrydzewski/ubuntu
MAINTAINER Brad Rydzewski <brad@drone.io>

ADD rootfs/etc /etc/
ADD rootfs/root /root/
ADD rootfs/home/ubuntu /home/ubuntu/
RUN whoami && chown -R ubuntu:ubuntu /home/ubuntu && chmod 0440 /etc/sudoers


WORKDIR /home/ubuntu
USER ubuntu
ENV HOME /home/ubuntu
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LOGNAME ubuntu
ENV TERM xterm

ADD scripts /var/cache/drone/scripts
RUN cd /var/cache/drone/scripts && sudo chmod +x *.sh && ./all.sh && sudo rm -rf /var/cache/drone/scripts
