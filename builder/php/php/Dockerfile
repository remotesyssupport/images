FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/
ENV HOME /home/ubuntu

# install apt dependencies
RUN sudo add-apt-repository -y ppa:ondrej/php5               && \
    sudo apt-get -qq update                                  && \
    sudo apt-get install php5-dev php5  php5-xdebug php-pear && \
    sudo apt-get install libmcrypt-dev libtidy-dev re2c php5-curl php5-gd php5-intl php5-xmlrpc php5-mcrypt php5-mysql php5-pgsql php5-sqlite php5-tidy



# sudo apt-get build-dep php5-cli  

# install phpbuild 
RUN git clone git://github.com/CHH/php-build.git            && \
    sudo php-build/install.sh                               && \
    sudo chown -R ubuntu:ubuntu /usr/local/share/php-build  && \
    rm -rf php-build/

# install phpenv
RUN git clone https://github.com/CHH/phpenv.git             && \
    phpenv/bin/phpenv-install.sh                            && \
    rm -rf phpenv/

# install default php version
RUN export PATH=$PATH:/home/ubuntu/.phpenv/bin                                 && \
    php-build -i development --pear 5.5.6 /home/ubuntu/.phpenv/versions/5.5.6  && \
    sed -i  's/128M/512M/' /home/ubuntu/.phpenv/versions/5.5.6/etc/php.ini     && \
    phpenv init -                                                              && \
    phpenv rehash                                                              && \
    phpenv global 5.5.6                                                        && \
    curl -sS https://getcomposer.org/installer | php                           && \
    sudo mv composer.phar /usr/local/bin/composer                              && \
    sudo chmod +x /usr/local/bin/composer                                      && \
    sudo pear channel-discover pear.phpunit.de                                 && \
    sudo pear channel-discover pear.symfony.com                                && \
    sudo pear channel-discover pear.symfony-project.com                        && \
    sudo pear channel-discover components.ez.no                                && \
    sudo pear config-set auto_discover 1                                       && \
    sudo pear install --alldeps pear.phpunit.de/PHPUnit                        && \
    sudo pecl -q install mongo                                                 && \
    sudo echo "extension=mongo.so" | sudo tee /home/ubuntu/.phpenv/versions/5.5.6/etc/php.ini