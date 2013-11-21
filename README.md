Scripts and Dockerfiles used to generate build machines for the Drone
Continuous Integration server.

## ubuntu

We create a root Ubuntu image using the Ubuntu Cloud ISO. This means
our root image will be almost identical to an Ubuntu 12.04 Amazon AMI,
but with added software packages (git, svn, hg, bzr, xvfb).

We recommend installing this image directly from the Docker index:

```
sudo docker pull bradrydzewski/ubuntu
```

## base

We create a base image with common compilers (gcc), toolchains (make, cmake, etc),
libraries (libcurl, libssl, etc) and base languages (python, ruby, go, java, node).

```
sudo docker build -rm -t bradrydzewski/base base/Dockerfile
```

## builders

We create language-specific Docker images from the `base` image. These images
are intended to build and test your code.

Go Images

```
sudo docker build -rm -t bradrydzewski/go:1.0 builder/golang/go_1.0/
sudo docker build -rm -t bradrydzewski/go:1.1 builder/golang/go_1.1/
sudo docker build -rm -t bradrydzewski/go:1.2 builder/golang/go_1.2/
```

Python Images

```
sudo docker build -rm -t bradrydzewski/python builder/python/python/
sudo docker build -rm -t bradrydzewski/python:2.6 builder/python/python_2.6/
sudo docker build -rm -t bradrydzewski/python:2.7 builder/python/python_2.7/
sudo docker build -rm -t bradrydzewski/python:3.2 builder/python/python_3.2/
sudo docker build -rm -t bradrydzewski/python:3.3 builder/python/python_3.3/
```

Ruby Images

```
TODO
```

Erlang Images

```
sudo docker build -rm -t bradrydzewski/erlang builder/erlang/erlang/
sudo docker build -rm -t bradrydzewski/erlang:R16B02 builder/erlang/erlang_R16B02/
sudo docker build -rm -t bradrydzewski/erlang:R16B01 builder/erlang/erlang_R16B01/
sudo docker build -rm -t bradrydzewski/erlang:R16B builder/erlang/erlang_R16B/
sudo docker build -rm -t bradrydzewski/erlang:R15B03 builder/erlang/erlang_R15B03/
sudo docker build -rm -t bradrydzewski/erlang:R15B02 builder/erlang/erlang_R15B02/
sudo docker build -rm -t bradrydzewski/erlang:R15B01 builder/erlang/erlang_R15B01/
sudo docker build -rm -t bradrydzewski/erlang:R15B builder/erlang/erlang_R15B/
sudo docker build -rm -t bradrydzewski/erlang:R14B04 builder/erlang/erlang_R14B04/
sudo docker build -rm -t bradrydzewski/erlang:R14B03 builder/erlang/erlang_R14B03/
sudo docker build -rm -t bradrydzewski/erlang:R14B02 builder/erlang/erlang_R14B02/
sudo docker build -rm -t bradrydzewski/erlang:R14B01 builder/erlang/erlang_R14B01/
sudo docker build -rm -t bradrydzewski/erlang:R14A builder/erlang/erlang_R14A/
```