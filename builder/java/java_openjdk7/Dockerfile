FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN sudo apt-get -y install openjdk-7-jdk default-jdk        && \
    sudo apt-get -y install ant ant-contrib ivy maven gradle && \
    sudo update-java-alternatives -s java-1.7.0-openjdk-amd64 2> /dev/null