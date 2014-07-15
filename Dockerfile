FROM redis
MAINTAINER quyennt "quyen@agencyrevolution.com"

RUN mkdir ./redis_data
VOLUME ./redis_data

EXPOSE 6380
ENTRYPOINT ["redis-server", "--port", "6380"]
