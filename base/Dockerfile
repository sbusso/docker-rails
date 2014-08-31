FROM ubuntu:14.04
MAINTAINER Stéphane Busso <stephane.busso@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# make sure the package repository is up to date and update ubuntu
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get -y upgrade && \
  apt-get update && \
  locale-gen en_US.UTF-8

RUN apt-get install -y curl htop software-properties-common unzip nano wget git

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV HOME /root