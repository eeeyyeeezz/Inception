FROM	debian:buster

RUN 	apt-get update -y && apt-get upgrade -y 

RUN		apt-get install -y	\
		nginx				\
		openssl				\
		wget				

RUN 	rm -rf ./etc/nginx/sites-available/default
RUN 	rm -rf ./etc/nginx/sites-enabled/default
COPY 	/tools/nginx.conf ./etc/nginx/sites-available
RUN 	ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

RUN		mkdir /etc/nginx/ssl
RUN		mkdir /etc/nginx/ssl/certs
RUN		mkdir /etc/nginx/ssl/private

RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048		\
		-keyout /etc/nginx/ssl/private/gmorra.key 				\
		-out /etc/nginx/ssl/certs/gmorra.crt					\
		-subj "/C=RU/ST=Kazan/L=Kazan/O=21/OU=gmorra/CN=localhost"

RUN		chmod -R 755 /etc/nginx/ssl/*

# Комент
EXPOSE	443 
# end

CMD		["nginx", "-g", "daemon off;"]