FROM debian:bullseye

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install mariadb-server -y && \
	service mariadb start

CMD ["mysqld"]
