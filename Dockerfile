FROM ubuntu:20.04

RUN apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y sysbench mc mysql-client

WORKDIR /
RUN mkdir -p /home/ubuntu/stresstest
WORKDIR /home/ubuntu/stresstest

COPY test.sh .