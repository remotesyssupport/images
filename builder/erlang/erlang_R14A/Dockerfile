FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R14A R14A && \
	sudo mkdir /opt/R14A && \
	sudo chown -R 1000:1000 /opt/R14A && \
	kerl install R14A /opt/R14A