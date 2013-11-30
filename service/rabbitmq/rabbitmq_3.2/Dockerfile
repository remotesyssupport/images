FROM ubuntu:precise
RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list     && \
    echo "deb-src http://archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list            && \
    echo "deb-src http://archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list        && \
    dpkg-divert --local --rename --add /sbin/initctl                                                  && \
    ln -s /bin/true /sbin/initctl                                                                     && \
    cd /tmp                                                                                           && \
    apt-get -qq update                                                                                && \
    apt-get -y install wget erlang-nox erlang-dev erlang logrotate                                    && \
    wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.2.1/rabbitmq-server_3.2.1-1_all.deb      && \
    dpkg -i rabbitmq-server_3.2.1-1_all.deb                                                           && \
    rm rabbitmq-server_3.2.1-1_all.deb                                                                && \
    rabbitmq-plugins enable rabbitmq_management
EXPOSE 5672 15672
ENTRYPOINT "/usr/sbin/rabbitmq-server"

