all:
	docker-compose -f srcs/docker-compose.yaml up

down:
	docker-compose -f srcs/docker-compose.yaml down

rm_vols:
	docker volume rm srcs_wp
	docker volume rm srcs_db	
	
re:
	docker-compose -f srcs/docker-compose.yaml down --rmi all -v
	docker-compose -f srcs/docker-compose.yaml build --no-cache
	docker-compose -f srcs/docker-compose.yaml up