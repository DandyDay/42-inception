FROM debian:bullseye

COPY tools/docker-entrypoint.sh /tmp/docker-entrypoint.sh

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install mariadb-server -y && \
	service mariadb start && \
	chmod 755 /tmp/docker-entrypoint.sh

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT [ "/bin/bash", "/tmp/docker-entrypoint.sh" ]

CMD [ "mysqld" ]
