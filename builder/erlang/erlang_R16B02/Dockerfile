FROM bradrydzewski/kerl

WORKDIR /home/ubuntu
USER ubuntu
ADD kerl.sh /etc/drone.d/

RUN kerl build R16B02 R16B02 && \
	sudo mkdir /opt/R16B02 && \
	sudo chown -R 1000:1000 /opt/R16B02 && \
	kerl install R16B02 /opt/R16B02