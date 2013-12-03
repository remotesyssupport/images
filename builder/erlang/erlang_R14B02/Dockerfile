FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD .dronerc /home/ubuntu/

RUN kerl build R14B02 R14B02 && \
	sudo mkdir /opt/R14B02 && \
	sudo chown -R 1000:1000 /opt/R14B02 && \
	kerl install R14B02 /opt/R14B02