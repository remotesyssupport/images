FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu

RUN wget https://raw.github.com/technomancy/leiningen/stable/bin/lein && \
    sudo install -t /usr/local/bin lein                               && \
    rm lein