FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD kerl.sh /etc/drone.d/

RUN kerl build R16B01 R16B01 && \
	sudo mkdir /opt/R16B01 && \
	sudo chown -R 1000:1000 /opt/R16B01 && \
	kerl install R16B01 /opt/R16B01