FROM bradrydzewski/rbenv

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN export PATH=$PATH:/home/ubuntu/.rbenv/bin                                         && \
    export RBENV_VERSION=2.0.0-p353                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 2.0.0-p353                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 2.0.0-p353                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash