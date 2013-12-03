FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD kerl.sh /etc/drone.d/

RUN kerl build R14B04 R14B04 && \
	sudo mkdir /opt/R14B04 && \
	sudo chown -R 1000:1000 /opt/R14B04 && \
	kerl install R14B04 /opt/R14B04