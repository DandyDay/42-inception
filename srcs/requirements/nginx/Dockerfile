FROM debian:bullseye

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nginx openssl && \
	mkdir -p /etc/nginx/certs && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/jinhchoi.key -out /etc/nginx/certs/jinhchoi.crt -subj "/C=KR/ST=Seoul/L=Seoul/O=42_Seoul/CN=jinhchoi.42.fr"

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
