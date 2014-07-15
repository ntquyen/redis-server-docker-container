FROM redis
MAINTAINER quyennt "quyen@agencyrevolution.com"

RUN mkdir ./redis_data
VOLUME ./redis_data

EXPOSE 6380
ENTRYPOINT ["/usr/bin/redis-server", "--port", "6380", "--dir", "./redis_data/"]
