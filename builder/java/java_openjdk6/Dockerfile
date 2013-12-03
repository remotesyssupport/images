FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64

RUN sudo apt-get -y install openjdk-6-jdk default-jdk        && \
    sudo apt-get -y install ant ant-contrib ivy maven gradle && \
    sudo update-java-alternatives -s java-1.6.0-openjdk-amd64 2> /dev/null