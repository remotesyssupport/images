FROM bradrydzewski/base

RUN sudo add-apt-repository --yes ppa:webupd8team/java       && \
    sudo apt-get -qq update                                  && \
    echo "yes" | sudo apt-get install oracle-java8-installer && \
    sudo apt-get install oracle-java8-set-default

WORKDIR /home/ubuntu
USER ubuntu
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle