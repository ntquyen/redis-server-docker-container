FROM redis
MAINTAINER quyennt "quyen@agencyrevolution.com"

RUN mkdir /etc/redis/data
VOLUME /etc/redis/data

EXPOSE 6380
ENTRYPOINT ["/usr/bin/redis-server", "--port", "6380", "--dir", "/etc/redis/data/"]
