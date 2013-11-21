FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R16B02 R16B02 && \
	sudo mkdir /opt/R16B02 && \
	sudo chown -R 1000:1000 /opt/R16B02 && \
	kerl install R16B01 /opt/R16B02