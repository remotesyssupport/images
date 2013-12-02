#!/bin/bash

# remove clojure image
docker rmi bradrydzewski/lein

# remove dart image
docker rmi bradrydzewski/dart:stable
docker rmi bradrydzewski/dart:dev

# remove erlang images
docker rmi bradrydzewski/erlang:16B02
docker rmi bradrydzewski/erlang:16B01
docker rmi bradrydzewski/erlang:16B
docker rmi bradrydzewski/erlang				# KERL

# remove gcc images
docker rmi bradrydzewski/gcc:4.8
docker rmi bradrydzewski/gcc:4.6

# remove go images
docker rmi bradrydzewski/go:1.0
docker rmi bradrydzewski/go:1.1
docker rmi bradrydzewski/go:1.2

# remove groovy images
# TODO

# remove haskell image
docker rmi bradrydzewski/haskell:7.4

# remove java images
# TODO

# remove node images
docker rmi bradrydzewski/node:0.10
docker rmi bradrydzewski/node:0.8
docker rmi bradrydzewski/node					# NVM

# remove php images
docker rmi bradrydzewski/php:5.5
docker rmi bradrydzewski/php:5.4
docker rmi bradrydzewski/php:5.3
docker rmi bradrydzewski/php					# PHPENV

# remove python images
docker rmi bradrydzewski/python:2.7
docker rmi bradrydzewski/python:3.2
docker rmi bradrydzewski/python:3.3
docker rmi bradrydzewski/python:pypy
docker rmi bradrydzewski/python				# VIRTUALENV

# remove ruby images
docker rmi bradrydzewski/ruby:2.0.0
docker rmi bradrydzewski/ruby:1.9.3
docker rmi bradrydzewski/ruby					# RBENV

# remove scala image
docker rmi bradrydzewski/scala:2.9.3
docker rmi bradrydzewski/scala:2.10.3

# remove the base image last
#docker rmi bradrydzewski/base