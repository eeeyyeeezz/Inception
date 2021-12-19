all:
	docker-compose -f srcs/docker-compose.yaml up

down:
	docker-compose -f srcs/docker-compose.yaml down
	
re:
	cd /home/daniil/Desktop/Data && sudo rm -rf *
	mkdir db && mkdir wp
	docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	docker-compose -f srcs/docker-compose.yaml build --no-cache
	docker-compose -f srcs/docker-compose.yaml up