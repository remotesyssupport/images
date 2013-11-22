FROM ubuntu
RUN wget http://download.redis.io/releases/redis-2.8.0.tar.gz  && \
    tar xzf redis-2.8.0.tar.gz                                 && \
    cd redis-2.8.0                                             && \
    make                                                       && \
    install -t /usr/local/bin src/redis-server                 && \
    rm redis-2.8.0.tar.gz && rm -rf redis-2.8.0                && \
    mkdir /etc/redis                                           && \
    wget https://raw.github.com/antirez/redis/2.8/redis.conf > /etc/redis/redis.conf
ENTRYPOINT  ["/usr/bin/redis-server"]