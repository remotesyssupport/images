#!/bin/bash
set -e

# remove clojure image
sudo docker rmi bradrydzewski/lein

# remove dart image
sudo docker rmi bradrydzewski/dart:stable
sudo docker rmi bradrydzewski/dart:dev

# remove erlang images
sudo docker rmi bradrydzewski/erlang:16B02
sudo docker rmi bradrydzewski/erlang:16B01
sudo docker rmi bradrydzewski/erlang:16B
sudo docker rmi bradrydzewski/erlang				# KERL

# remove gcc images
sudo docker rmi bradrydzewski/gcc:4.8
sudo docker rmi bradrydzewski/gcc:4.6

# remove go images
sudo docker rmi bradrydzewski/go:1.0
sudo docker rmi bradrydzewski/go:1.1
sudo docker rmi bradrydzewski/go:1.2

# remove groovy images
# TODO

# remove haskell image
sudo docker rmi bradrydzewski/haskell:7.4

# remove java images
# TODO

# remove node images
sudo docker rmi bradrydzewski/node:0.10
sudo docker rmi bradrydzewski/node:0.8
sudo docker rmi bradrydzewski/node					# NVM

# remove php images
sudo docker rmi bradrydzewski/php:5.5
sudo docker rmi bradrydzewski/php:5.4
sudo docker rmi bradrydzewski/php:5.3
sudo docker rmi bradrydzewski/php					# PHPENV

# remove python images
sudo docker rmi bradrydzewski/python:2.7
sudo docker rmi bradrydzewski/python:3.2
sudo docker rmi bradrydzewski/python:3.3
sudo docker rmi bradrydzewski/python:pypy
sudo docker rmi bradrydzewski/python				# VIRTUALENV

# remove ruby images
sudo docker rmi bradrydzewski/ruby:2.0.0
sudo docker rmi bradrydzewski/ruby:1.9.3
sudo docker rmi bradrydzewski/ruby					# RBENV

# remove scala image
sudo docker rmi bradrydzewski/scala:2.9.3
sudo docker rmi bradrydzewski/scala:2.10.3

# remove the base image last
sudo docker rmi bradrydzewski/base