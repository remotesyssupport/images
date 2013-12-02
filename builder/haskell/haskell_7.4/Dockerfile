FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN sudo apt-get -qq update                           && \
		sudo apt-get install haskell-platform && \
		cabal update                          && \
		cabal install hunit c2hs