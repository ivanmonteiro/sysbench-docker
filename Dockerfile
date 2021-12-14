FROM ubuntu:20.04

RUN apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y sysbench mc mysql-client

RUN mkdir -p /home/ubuntu/ && chmod 777 /home/ubuntu/
WORKDIR /home/ubuntu/

COPY test.sh .
RUN ["chmod", "+x", "test.sh"]

ENTRYPOINT ["./test.sh"]
CMD ["oltp_read_write.lua"]