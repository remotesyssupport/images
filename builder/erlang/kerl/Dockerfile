FROM bradrydzewski/base
USER ubuntu
WORKDIR /home/ubuntu

# install rebar
RUN wget https://github.com/rebar/rebar/wiki/rebar && \
	sudo install -t /usr/local/bin rebar && \
	rm rebar

# install kerl
RUN curl -O https://raw.github.com/spawngrid/kerl/master/kerl && \
	sudo install -t /usr/local/bin kerl && \
	rm kerl