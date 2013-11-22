FROM bradrydzewski/php
ADD .dronerc /home/ubuntu/

RUN export PATH=$PATH:/home/ubuntu/.phpenv/bin                                   && \
    php-build -i development --pear 5.3.27 /home/ubuntu/.phpenv/versions/5.3.27  && \
    sed -i  's/128M/512M/' /home/ubuntu/.phpenv/versions/5.3.27/etc/php.ini      && \
    phpenv init -                                                                && \
    phpenv rehash