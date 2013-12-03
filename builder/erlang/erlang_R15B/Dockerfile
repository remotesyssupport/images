FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD kerl.sh /etc/drone.d/

RUN kerl build R15B R15B && \
	sudo mkdir /opt/R15B && \
	sudo chown -R 1000:1000 /opt/R15B && \
	kerl install R15B /opt/R15B