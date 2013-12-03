FROM bradrydzewski/base

RUN add-apt-repository --yes ppa:webupd8team/java                                                                 && \
    apt-get -qq update                                                                                            && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java7-installer                                                                     && \
    apt-get install oracle-java7-set-default

WORKDIR /home/ubuntu
USER ubuntu
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
