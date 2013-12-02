#!/bin/bash
set -e

##################################################################################
# Base Image

#docker build -rm -t bradrydzewski/base builder/base/

##################################################################################
# Dart Images

docker build -rm -t bradrydzewski/dart     builder/dart/dart_stable/
docker build -rm -t bradrydzewski/dart:dev builder/dart/dart_dev/

##################################################################################
# Go Images

docker build -rm -t bradrydzewski/go:1.2 builder/golang/go_1.2/
docker build -rm -t bradrydzewski/go:1.1 builder/golang/go_1.1/
docker build -rm -t bradrydzewski/go:1.0 builder/golang/go_1.0/

##################################################################################
# Haskell Images

docker build -rm -t bradrydzewski/haskell:7.4 builder/haskell/haskell_7.4/

##################################################################################
# Node Images

docker build -rm -t bradrydzewski/node      builder/node/node/
docker build -rm -t bradrydzewski/node:0.10 builder/node/node_0.10/
docker build -rm -t bradrydzewski/node:0.8  builder/node/node_0.8/

##################################################################################
# PHP Images

docker build -rm -t bradrydzewski/php     builder/php/php
docker build -rm -t bradrydzewski/php:5.5 builder/php/php_5.5
docker build -rm -t bradrydzewski/php:5.4 builder/php/php_5.4

##################################################################################
# Python Images

docker build -rm -t bradrydzewski/python      builder/python/python/
docker build -rm -t bradrydzewski/python:2.7  builder/python/python_2.7/
docker build -rm -t bradrydzewski/python:3.2  builder/python/python_3.2/
docker build -rm -t bradrydzewski/python:3.3  builder/python/python_3.3/
docker build -rm -t bradrydzewski/python:pypy builder/python/pypy/

##################################################################################
# Ruby Images

docker build -rm -t bradrydzewski/ruby        builder/ruby/ruby/
docker build -rm -t bradrydzewski/ruby:1.9.3  builder/ruby/ruby_1.9.3/
docker build -rm -t bradrydzewski/ruby:2.0.0  builder/ruby/ruby_2.0.0/

##################################################################################
# Java Images

#docker build -rm -t bradrydzewski/java:oraclejdk8  builder/java/java_oraclejdk7/
#docker build -rm -t bradrydzewski/java:oraclejdk7  builder/java/java_oraclejdk7/
#docker build -rm -t bradrydzewski/java:openjdk7  builder/java/java_openjdk7/
#docker build -rm -t bradrydzewski/java:openjdk6  builder/java/java_openjdk6/

##################################################################################
# Scala Images

docker build -rm -t bradrydzewski/scala:2.10.3  builder/scala/scala_2.10.3/
docker build -rm -t bradrydzewski/scala:2.9.3   builder/scala/scala_2.9.3/

##################################################################################
# Groovy Images



##################################################################################
# Clojure Images

docker build -rm -t bradrydzewski/lein builder/clojure/lein/

##################################################################################
# GCC Images

docker build -rm -t bradrydzewski/gcc:4.6  builder/gcc/gcc_4.6/
docker build -rm -t bradrydzewski/gcc:4.8  builder/gcc/gcc_4.8/

##################################################################################
# Erlang Images

docker build -rm -t bradrydzewski/erlang builder/erlang/erlang/
docker build -rm -t bradrydzewski/erlang:R16B02 builder/erlang/erlang_R16B02/
docker build -rm -t bradrydzewski/erlang:R16B01 builder/erlang/erlang_R16B01/
docker build -rm -t bradrydzewski/erlang:R16B   builder/erlang/erlang_R16B/
#docker build -rm -t bradrydzewski/erlang:R15B03 builder/erlang/erlang_R15B03/
#docker build -rm -t bradrydzewski/erlang:R15B02 builder/erlang/erlang_R15B02/
#docker build -rm -t bradrydzewski/erlang:R15B01 builder/erlang/erlang_R15B01/
#docker build -rm -t bradrydzewski/erlang:R15B   builder/erlang/erlang_R15B/
#docker build -rm -t bradrydzewski/erlang:R14B04 builder/erlang/erlang_R14B04/
#docker build -rm -t bradrydzewski/erlang:R14B03 builder/erlang/erlang_R14B03/
#docker build -rm -t bradrydzewski/erlang:R14B02 builder/erlang/erlang_R14B02/
#docker build -rm -t bradrydzewski/erlang:R14B01 builder/erlang/erlang_R14B01/
#docker build -rm -t bradrydzewski/erlang:R14A   builder/erlang/erlang_R14A/