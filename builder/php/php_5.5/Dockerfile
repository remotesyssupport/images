FROM bradrydzewski/phpenv

WORKDIR /home/ubuntu
USER ubuntu
ADD phpenv.sh /etc/drone.d/
ENV HOME /home/ubuntu

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