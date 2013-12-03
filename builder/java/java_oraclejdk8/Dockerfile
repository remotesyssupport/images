FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN sudo add-apt-repository --yes ppa:webupd8team/java                                                                 && \
    sudo apt-get -qq update                                                                                            && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    sudo apt-get -y install oracle-java8-installer                                                                     && \
    sudo apt-get -y install oracle-java8-set-default