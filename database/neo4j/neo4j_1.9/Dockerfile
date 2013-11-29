FROM ubuntu:precise

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list     && \
    echo "deb-src http://archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list            && \
    echo "deb-src http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list        && \

    apt-get -qq update                                                                 && \
    apt-get -y install software-properties-common python-software-properties wget lsof && \

    add-apt-repository ppa:webupd8team/java                                                                       && \
    apt-get -qq update                                                                                            && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java7-installer                                                                     && \

    wget http://dist.neo4j.org/neo4j-community-1.9.5-unix.tar.gz          && \
    tar xzf neo4j-community-1.9.5-unix.tar.gz                             && \
    rm neo4j-community-1.9.5-unix.tar.gz                                  && \
    mv neo4j-community-1.9.5 /opt/neo4j                                   && \
    echo "org.neo4j.server.webserver.address=0.0.0.0" >> /opt/neo4j/conf/neo4j-server.properties
EXPOSE 7474

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "/opt/neo4j/bin/neo4j console"]

# see http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
