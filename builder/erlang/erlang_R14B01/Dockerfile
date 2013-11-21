FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R14B01 R14B01 && \
	sudo mkdir /opt/R14B01 && \
	sudo chown -R 1000:1000 /opt/R14B01 && \
	kerl install R14B01 /opt/R14B01