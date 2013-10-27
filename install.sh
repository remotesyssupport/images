#!/bin/bash

# work out of the tmp directory so that
# we don't make a mess on the host system.
cd /tmp

DOCKER_USER=bradrydzewski
CONTAINER_IMAGE=ubuntu
CONTAINER_NAME=drone
CONTAINER_DIR=/var/lib/lxc/$CONTAINER_NAME/rootfs

# make sure container and image don't already exist
set +e
sudo lxc-destroy -n $CONTAINER_NAME
sudo docker rmi $DOCKER_USER/$CONTAINER_NAME
set -e

# create the default LXC container (takes ~10 minutes)
sudo lxc-create -n $CONTAINER_NAME -t $CONTAINER_IMAGE

# install version control clients
# these are required for ALL repositories and therefore
# should be included in the base drone build image
chroot $CONTAINER_DIR sudo apt-get update
chroot $CONTAINER_DIR sudo apt-get install -y git git-core subversion mercurial bzr
chroot $CONTAINER_DIR sudo apt-get install -y xvfb zip unzip curl wget rsync openssl
#cp xvfb.sh $CONTAINER_DIR/etc/init.d/xvfb

chroot $CONTAINER_DIR <<EOF
curl https://raw.github.com/travis-ci/travis-cookbooks/master/ci_environment/xserver/files/default/etc/init.d/xvfb.sh > /etc/init.d/xvfb
chmod +x /etc/init.d/xvfb
EOF


# enable passwordless sudo
sudo /bin/bash <<EOF
echo -e "\nubuntu ALL=NOPASSWD: ALL" >> $CONTAINER_DIR/etc/sudoers
EOF

# force yes for all apt-get commands
sudo /bin/bash <<EOF
echo -e "APT::Get::Assume-Yes \"true\";APT::Get::force-yes \"true\";" >> $CONTAINER_DIR/etc/apt/apt.conf.d/90forceyes
EOF

# strict host checking turned off for all accounts
sudo /bin/bash <<EOF
mkdir -p $CONTAINER_DIR/home/ubuntu/.ssh
mkdir -p $CONTAINER_DIR/root/.ssh
echo -e "StrictHostKeyChecking no" >> $CONTAINER_DIR/home/ubuntu/.ssh/config
echo -e "StrictHostKeyChecking no" >> $CONTAINER_DIR/root/.ssh/config
chown -R ubuntu:ubuntu $CONTAINER_DIR/home/ubuntu/.ssh
chmod 644 $CONTAINER_DIR/home/ubuntu/.ssh
chmod 644 $CONTAINER_DIR/root/.ssh
EOF

# upstart workaround for docker
# see https://github.com/dotcloud/docker/issues/1024
chroot $CONTAINER_DIR dpkg-divert --local --rename --add /sbin/initctl
chroot $CONTAINER_DIR ln -s /bin/true /sbin/initctl

# tar the container
tar -czf $CONTAINER_NAME.tar -C $CONTAINER_DIR .

# import the container into docker
cat $CONTAINER_NAME.tar | sudo docker import - $DOCKER_USER/$CONTAINER_NAME
