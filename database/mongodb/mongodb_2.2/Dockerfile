FROM ubuntu:precise
RUN apt-get -qq update && apt-get -y install wget                       && \
    wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-2.2.6.tgz && \
    tar xzf mongodb-linux-x86_64-2.2.6.tgz                              && \
    install -t /usr/bin mongodb-linux-x86_64-2.2.6/bin/*                && \
    mkdir -p /data/db /var/lib/mongodb/                                 && \
    rm mongodb-linux-x86_64-2.2.6.tgz                                   && \
    rm -rf mongodb-linux-x86_64-2.2.6
EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]
CMD ["--noprealloc", "--smallfiles"]

