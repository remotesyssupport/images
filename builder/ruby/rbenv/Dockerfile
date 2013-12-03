FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

ADD rbenv.sh /etc/drone.d/

RUN git clone git://github.com/sstephenson/rbenv.git /home/ubuntu/.rbenv              && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build