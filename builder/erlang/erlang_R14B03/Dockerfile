FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R14B03 R14B03 && \
	sudo mkdir /opt/R14B03 && \
	sudo chown -R 1000:1000 /opt/R14B03 && \
	kerl install R14B03 /opt/R14B03