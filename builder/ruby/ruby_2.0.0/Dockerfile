FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ADD rbenv.sh /etc/drone.d/

# we already install ruby 2.0.0 in the base image
# so we'll comment this out for now
#RUN export PATH=$PATH:/home/ubuntu/.rbenv/bin                                         && \
#    export RBENV_VERSION=2.0.0-p353                                                   && \
#    eval "$(rbenv init -)"                                                            && \
#    CC=gcc rbenv install 2.0.0-p353                                                   && \
#    rbenv rehash                                                                      && \
#    rbenv global 2.0.0-p353                                                           && \
#    rbenv rehash                                                                      && \
#    gem install bundler                                                               && \
#    rbenv rehash