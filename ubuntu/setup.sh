#!/bin/bash
# Creates a container using an Ubuntu Cloud ISO and then
# imports into Docker. This will provide an image that
# is nearly identical to an Amazon (or Rackspace) Ubuntu AMI.
cd /tmp

DOCKER_USER=bradrydzewski
UBUNTU_RELEASE=precise
CONTAINER_NAME=ubuntu
CONTAINER_DIR=/var/lib/lxc/$CONTAINER_NAME/rootfs

# make sure container and image don't already exist
set +e
lxc-stop -n $CONTAINER_NAME
lxc-destroy -n $CONTAINER_NAME
docker rmi $DOCKER_USER/$CONTAINER_NAME
set -e

# create the default LXC container (takes ~10 minutes)
lxc-create -n $CONTAINER_NAME -t ubuntu-cloud -- -r $UBUNTU_RELEASE

# upstart workaround for docker
# see https://github.com/dotcloud/docker/issues/1024
chroot $CONTAINER_DIR dpkg-divert --local --rename --add /sbin/initctl
chroot $CONTAINER_DIR ln -s /bin/true /sbin/initctl

# tar the container
tar -czf $CONTAINER_NAME.tar -C $CONTAINER_DIR .

# import the container into docker
cat $CONTAINER_NAME.tar | docker import - $DOCKER_USER/$CONTAINER_NAME