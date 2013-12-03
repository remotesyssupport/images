FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD kerl.sh /etc/drone.d/

RUN kerl build R16B R16B && \
	sudo mkdir /opt/R16B && \
	sudo chown -R 1000:1000 /opt/R16B && \
	kerl install R16B /opt/R16B