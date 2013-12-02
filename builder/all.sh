#!/bin/bash
set -e

##################################################################################
# Base Image

#docker build -rm -t bradrydzewski/base base/

##################################################################################
# Dart Images

docker build -rm -t bradrydzewski/dart     dart/dart_stable/
docker build -rm -t bradrydzewski/dart:dev dart/dart_dev/

##################################################################################
# Go Images

docker build -rm -t bradrydzewski/go:1.2 golang/go_1.2/
docker build -rm -t bradrydzewski/go:1.1 golang/go_1.1/
docker build -rm -t bradrydzewski/go:1.0 golang/go_1.0/

##################################################################################
# Haskell Images

docker build -rm -t bradrydzewski/haskell:7.4 haskell/haskell_7.4/

##################################################################################
# Node Images

docker build -rm -t bradrydzewski/node      node/node/
docker build -rm -t bradrydzewski/node:0.10 node/node_0.10/
docker build -rm -t bradrydzewski/node:0.8  node/node_0.8/

##################################################################################
# PHP Images

docker build -rm -t bradrydzewski/php     php/php
docker build -rm -t bradrydzewski/php:5.5 php/php_5.5
docker build -rm -t bradrydzewski/php:5.4 php/php_5.4

##################################################################################
# Python Images

docker build -rm -t bradrydzewski/python      python/python/
docker build -rm -t bradrydzewski/python:2.7  python/python_2.7/
docker build -rm -t bradrydzewski/python:3.2  python/python_3.2/
docker build -rm -t bradrydzewski/python:3.3  python/python_3.3/
docker build -rm -t bradrydzewski/python:pypy python/pypy/

##################################################################################
# Ruby Images

docker build -rm -t bradrydzewski/ruby        ruby/ruby/
docker build -rm -t bradrydzewski/ruby:1.9.3  ruby/ruby_1.9.3/
docker build -rm -t bradrydzewski/ruby:2.0.0  ruby/ruby_2.0.0/

##################################################################################
# Java Images

#docker build -rm -t bradrydzewski/java:oraclejdk8  java/java_oraclejdk7/
#docker build -rm -t bradrydzewski/java:oraclejdk7  java/java_oraclejdk7/
#docker build -rm -t bradrydzewski/java:openjdk7  java/java_openjdk7/
#docker build -rm -t bradrydzewski/java:openjdk6  java/java_openjdk6/

##################################################################################
# Scala Images

docker build -rm -t bradrydzewski/scala:2.10.3  scala/scala_2.10.3/
docker build -rm -t bradrydzewski/scala:2.9.3   scala/scala_2.9.3/

##################################################################################
# Groovy Images



##################################################################################
# Clojure Images

docker build -rm -t bradrydzewski/lein clojure/lein/

##################################################################################
# GCC Images

docker build -rm -t bradrydzewski/gcc:4.6  gcc/gcc_4.6/
docker build -rm -t bradrydzewski/gcc:4.8  gcc/gcc_4.8/

##################################################################################
# Erlang Images

docker build -rm -t bradrydzewski/erlang        erlang/erlang/
docker build -rm -t bradrydzewski/erlang:R16B02 erlang/erlang_R16B02/
docker build -rm -t bradrydzewski/erlang:R16B01 erlang/erlang_R16B01/
docker build -rm -t bradrydzewski/erlang:R16B   erlang/erlang_R16B/
#docker build -rm -t bradrydzewski/erlang:R15B03 erlang/erlang_R15B03/
#docker build -rm -t bradrydzewski/erlang:R15B02 erlang/erlang_R15B02/
#docker build -rm -t bradrydzewski/erlang:R15B01 erlang/erlang_R15B01/
#docker build -rm -t bradrydzewski/erlang:R15B   erlang/erlang_R15B/
#docker build -rm -t bradrydzewski/erlang:R14B04 erlang/erlang_R14B04/
#docker build -rm -t bradrydzewski/erlang:R14B03 erlang/erlang_R14B03/
#docker build -rm -t bradrydzewski/erlang:R14B02 erlang/erlang_R14B02/
#docker build -rm -t bradrydzewski/erlang:R14B01 erlang/erlang_R14B01/
#docker build -rm -t bradrydzewski/erlang:R14A   erlang/erlang_R14A/