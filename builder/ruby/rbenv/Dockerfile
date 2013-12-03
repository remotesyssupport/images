FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

ADD .dronerc /home/ubuntu/

RUN git clone git://github.com/sstephenson/rbenv.git /home/ubuntu/.rbenv              && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build