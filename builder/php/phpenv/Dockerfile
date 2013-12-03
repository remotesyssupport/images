FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu
ADD phpenv.sh /etc/drone.d/
ENV HOME /home/ubuntu

# install apt dependencies
RUN sudo add-apt-repository -y ppa:ondrej/php5               && \
    sudo apt-get -qq update                                  && \
    sudo apt-get install php5-dev php5  php5-xdebug php-pear && \
    sudo apt-get install libmcrypt-dev libtidy-dev re2c php5-curl php5-gd php5-intl php5-xmlrpc php5-mcrypt php5-mysql php5-pgsql php5-sqlite php5-tidy

# install phpbuild 
RUN git clone git://github.com/CHH/php-build.git            && \
    sudo php-build/install.sh                               && \
    sudo chown -R ubuntu:ubuntu /usr/local/share/php-build  && \
    rm -rf php-build/

# install phpenv
RUN git clone https://github.com/CHH/phpenv.git             && \
    phpenv/bin/phpenv-install.sh                            && \
    rm -rf phpenv/