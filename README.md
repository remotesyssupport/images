

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
cd base
sudo docker build -rm -t drone/base .
```

## languages

We create language-specific Docker images from the `base` image.

```
TODO
```