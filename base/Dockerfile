FROM bradrydzewski/ubuntu
ADD scripts /var/cache/drone/scripts
RUN cd /var/cache/drone/scripts && chmod +x *.sh && ./all.sh
