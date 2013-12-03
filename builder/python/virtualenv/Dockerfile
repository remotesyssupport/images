FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu

RUN sudo easy_install virtualenv                        && \
    sudo add-apt-repository --yes ppa:fkrull/deadsnakes && \
    mkdir -p /home/ubuntu/virtualenv