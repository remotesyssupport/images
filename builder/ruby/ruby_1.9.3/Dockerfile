FROM bradrydzewski/rbenv

WORKDIR /home/ubuntu
USER ubuntu
ADD rbenv.sh /etc/drone.d/

RUN export PATH=$PATH:/home/ubuntu/.rbenv/bin                                         && \
    export RBENV_VERSION=1.9.3-p484                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 1.9.3-p484                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 1.9.3-p484                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash