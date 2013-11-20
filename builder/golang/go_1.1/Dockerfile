FROM bradrydzewski/base
USER ubuntu
ADD .dronerc /home/ubuntu/
RUN wget https://go.googlecode.com/files/go1.1.2.linux-amd64.tar.gz --quiet && /
			sudo tar -C /usr/local -xzf go1.1.2.linux-amd64.tar.gz && /
			sudo chown -R ubuntu:ubuntu /usr/local/go && /
			rm go1.1.2.linux-amd64.tar.gz