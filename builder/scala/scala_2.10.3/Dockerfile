FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ADD scala.sh /etc/drone.d/

RUN wget http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.0/sbt.deb && \
    sudo dpkg -i sbt.deb                                                                         && \
    rm sbt.deb                                                                                   && \

    wget http://www.scala-lang.org/files/archive/scala-2.10.3.tgz                                && \
    sudo tar -xzf scala-2.10.3.tgz                                                               && \
    sudo mv scala-2.10.3 /opt/scala-2.10.3                                                       && \
    sudo chown -R ubuntu:ubuntu /opt/scala-2.10.3
