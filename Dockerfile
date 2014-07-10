FROM quyennt/ubuntu:trusty
MAINTAINER quyennt "quyen@agencyrevolution.com"

RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get update
RUN apt-get install -y redis-server

RUN mkdir /etc/redis/data

ADD ./redis.conf /etc/redis/

VOLUME /etc/redis/data

EXPOSE 6380
ENTRYPOINT ["/usr/bin/redis-server", "/etc/redis/redis.conf"]

