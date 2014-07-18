APP_NAME = redis-server

all:
	docker build -t quyennt/redis .
run:
	docker run --name redis -d quyennt/redis
create-app:
	deis create $(APP_NAME)
deploy:
	git push deis master
destroy:
	deis destroy --app=$(APP_NAME)

