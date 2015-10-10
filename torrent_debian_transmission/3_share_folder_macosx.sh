## Base image Ubuntu 14.04
FROM ubuntu:14.04

MAINTAINER Jean-Jacques MOIROUX <jjmoiroux@gmail.com>

## Set local for postgresql to suppress bug
RUN locale-gen en_US.UTF-8 && echo 'LANG="en_US.UTF-8"' > /etc/default/locale

## install following packets with auto accept
RUN apt-get update ; apt-get install -y curl  nano  openssh-server wget transmission-daemon \
		&& apt-get clean ; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
