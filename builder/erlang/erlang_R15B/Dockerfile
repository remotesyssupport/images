FROM bradrydzewski/erlang
ADD .dronerc /home/ubuntu/

RUN kerl build R15B R15B && /
	sudo mkdir /opt/R15B && /
	sudo chown -R 1000:1000 /opt/R15B && /
	kerl install R15B /opt/R15B