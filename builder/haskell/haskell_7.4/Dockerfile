FROM bradrydzewski/base
ADD .dronerc /home/ubuntu/

RUN sudo apt-get -qq update                           && \
		sudo apt-get install haskell-platform && \
		cabal update                          && \
		cabal install \
                hunit \
                c2hs \
                containers \
                bytestring \
                mtl \
                directory \
                filepath \
                transformers \
                text \
                array \
                time \
                process \
                parsec \
                network \
                template-haskell \
                binary \
                vector \
                unix \
                utf8-string \
                pretty