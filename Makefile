all:
	docker build -t quyennt/redis .
run:
	docker run --name redis -d quyennt/redis
