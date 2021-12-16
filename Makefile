all:
	rm -rf /Users/gmorra/Desktop/XXX
	docker-compose -f srcs/docker-compose.yaml up

down:
	docker-compose -f srcs/docker-compose.yaml down
	
re:
	docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	docker-compose -f srcs/docker-compose.yaml build --no-cache
	docker-compose -f srcs/docker-compose.yaml up