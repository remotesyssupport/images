FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN kerl build R15B02 R15B02 && \
	sudo mkdir /opt/R15B02 && \
	sudo chown -R 1000:1000 /opt/R15B02 && \
	kerl install R15B02 /opt/R15B02