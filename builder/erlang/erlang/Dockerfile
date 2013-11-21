FROM bradrydzewski/base
USER ubuntu
WORKDIR /home/ubuntu
ADD .dronerc /home/ubuntu/

# install rebar
RUN wget https://github.com/rebar/rebar/wiki/rebar && \
	sudo install -t /usr/local/bin rebar && \
	rm rebar

# install kerl
RUN curl -O https://raw.github.com/spawngrid/kerl/master/kerl && \
	sudo install -t /usr/local/bin kerl && \
	rm kerl

# install default erlang
RUN kerl build R16B02 R16B02 && /
	sudo mkdir /opt/R16B02 && /
	sudo chown -R 1000:1000 /opt/R16B02 && /
	kerl install R16B01 /opt/R16B02