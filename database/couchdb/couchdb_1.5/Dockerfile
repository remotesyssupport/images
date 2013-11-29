FROM ubuntu:precise
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main"             >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise-updates main"     >> /etc/apt/sources.list && \
    echo "deb http://security.ubuntu.com/ubuntu precise-security main"   >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise universe"         >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise-updates universe" >> /etc/apt/sources.list && \
    apt-get -qq update && \
    apt-get -y install build-essential libicu-dev libcurl4-gnutls-dev libtool erlang-dev erlang zip libmozjs-dev wget && \
    wget http://apache.mirrors.pair.com/couchdb/source/1.5.0/apache-couchdb-1.5.0.tar.gz && \
    tar xzf apache-couchdb-1.5.0.tar.gz && \
    rm apache-couchdb-1.5.0.tar.gz      && \
    cd apache-couchdb-1.5.0             && \
    ./configure                         && \
    make                                && \
    make install                        && \
    cd ..                               && \
    rm -rf apache-couchdb-1.5.0         && \

    useradd -d /usr/local/var/lib/couchdb couchdb       && \
    chown -R couchdb:couchdb /usr/local/etc/couchdb     && \
    chown -R couchdb:couchdb /usr/local/var/lib/couchdb && \
    chown -R couchdb:couchdb /usr/local/var/log/couchdb && \
    chown -R couchdb:couchdb /usr/local/var/run/couchdb && \
    chmod -R 0770 /usr/local/etc/couchdb                && \
    chmod -R 0770 /usr/local/var/lib/couchdb            && \
    chmod -R 0770 /usr/local/var/log/couchdb            && \
    chmod -R 0770 /usr/local/var/run/couchdb            && \
    sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /usr/local/etc/couchdb/default.ini
EXPOSE 5984
ENTRYPOINT "/usr/local/bin/couchdb"

# see  http://jswiki.lab-01.com/wiki/doku.php?id=install-couch-ubuntu
