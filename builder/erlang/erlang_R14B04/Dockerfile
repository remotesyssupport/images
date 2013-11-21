FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R14B04 R14B04 && \
	sudo mkdir /opt/R14B04 && \
	sudo chown -R 1000:1000 /opt/R14B04 && \
	kerl install R14B04 /opt/R14B04