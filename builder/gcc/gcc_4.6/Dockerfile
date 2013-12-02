FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu

RUN sudo apt-get -qq update                                                                                      && \
    sudo apt-get --assume-yes install libtiff4-dev libpng-dev libjpeg-dev ffmpeg freeglut3-dev libfreetype6-dev  && \

    sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test  && \
    sudo apt-get -qq update                                    && \
    sudo apt-get --assume-yes install gcc-4.6                  && \
    sudo apt-get --assume-yes install g++-4.6