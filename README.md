Scripts and Dockerfiles used to generate build machines for the Drone
Continuous Integration server.

## ubuntu

We create a root Ubuntu image using the Ubuntu Cloud ISO. This means
our root image will be almost identical to an Ubuntu 12.04 Amazon AMI,
but with added software packages (git, svn, hg, bzr, xvfb).

The following script will create and import the image:

```
cd ubuntu
sudo ./setup.sh
```

## base

We create a base image with common compilers (gcc), toolchains (make, cmake, etc),
libraries (libcurl, libssl, etc) and base languages (python, ruby, go, java, node).

```
sudo docker build -rm -t drone/base base/Dockerfile
```

## builders

We create language-specific Docker images from the `base` image. These images
are intended to build and test your code.

```
sudo docker build -rm -t drone/node:0.11 base/node0.11/Dockerfile
```