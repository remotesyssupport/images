FROM ubuntu
RUN apt-get -qq update && apt-get -y install gcc make wget              && \
    wget --quiet http://download.redis.io/releases/redis-2.6.16.tar.gz  && \
    tar xzf redis-2.6.16.tar.gz                                         && \
    cd redis-2.6.16                                                     && \
    make                                                                && \
    install -t /usr/bin src/redis-server                                && \
    cd ..                                                               && \
    rm redis-2.6.16.tar.gz && rm -rf redis-2.6.16                       && \
    mkdir /etc/redis                                                    && \
    wget --quiet --no-check-certificate http://raw.github.com/antirez/redis/2.6/redis.conf > /etc/redis/redis.conf
EXPOSE 6379
ENTRYPOINT  ["/usr/bin/redis-server"]