FROM ubuntu:precise

# https://github.com/dotcloud/docker/issues/1024
RUN dpkg-divert --local --rename --add /sbin/initctl                                      && \
    ln -s /bin/true /sbin/initctl                                                         && \
    apt-get -qq update                                                                    && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server                        && \
    sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf  && \
    /bin/bash -c "/usr/sbin/mysqld &"                                                     && \
    sleep 10                                                                              && \
    mysql -u root -e 'drop database test'                                                 && \
    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

EXPOSE 3306
ENTRYPOINT "/usr/sbin/mysqld"
