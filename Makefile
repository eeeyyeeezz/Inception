all:
	sudo docker-compose -f srcs/docker-compose.yaml up

down:
	sudo docker-compose -f srcs/docker-compose.yaml down
	
re:
	sudo docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	sudo docker-compose -f srcs/docker-compose.yaml build --no-cache
	sudo docker-compose -f srcs/docker-compose.yaml up