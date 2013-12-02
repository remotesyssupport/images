FROM bradrydzewski/erlang

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN kerl build R15B03 R15B03 && \
	sudo mkdir /opt/R15B03 && \
	sudo chown -R 1000:1000 /opt/R15B03 && \
	kerl install R15B03 /opt/R15B03