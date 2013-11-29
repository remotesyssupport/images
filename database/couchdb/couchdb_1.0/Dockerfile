FROM ubuntu:precise
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main"             >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise-updates main"     >> /etc/apt/sources.list && \
    echo "deb http://security.ubuntu.com/ubuntu precise-security main"   >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise universe"         >> /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu precise-updates universe" >> /etc/apt/sources.list && \
    apt-get -qq update          && \
    apt-get install -y couchdb  && \
    sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /etc/couchdb/default.ini
EXPOSE 5984
ENTRYPOINT "/usr/bin/couchdb"
CMD ["-a", "/etc/couchdb/default.ini", "-a", "/etc/couchdb/local.ini", "-b", "-r", "5", "-p", "/var/run/couchdb/couchdb.pid", "-o", "/dev/null", "-e", "/dev/null", "-R"]
