FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

ADD .dronerc /home/ubuntu/

RUN git clone git://github.com/sstephenson/rbenv.git /home/ubuntu/.rbenv              && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && \
    CC=gcc /home/ubuntu/.rbenv/bin/rbenv install 2.0.0-p353                           && \
    /home/ubuntu/.rbenv/bin/rbenv rehash                                              && \
    /home/ubuntu/.rbenv/bin/rbenv global 2.0.0-p353                                   && \
    gem update --system                                                               && \
    /home/ubuntu/.rbenv/bin/rbenv rehash                                              && \
    gem install bundler                                                               && \
    gem install rake                                                                  && \
    /home/ubuntu/.rbenv/bin/rbenv rehash