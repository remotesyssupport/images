FROM bradrydzewski/base
WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/
RUN wget http://go.googlecode.com/files/go1.2rc5.linux-amd64.tar.gz --quiet && \
			sudo tar -C /usr/local -xzf go1.2rc5.linux-amd64.tar.gz && \
			sudo chown -R ubuntu:ubuntu /usr/local/go && \
			rm go1.2rc5.linux-amd64.tar.gz