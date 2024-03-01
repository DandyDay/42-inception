FROM debian:bullseye

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install mariadb-server -y && \
	service mariadb start && \
	mysql -e "CREATE DATABASE ${MYSQL_DB_NAME};" && \
	mysql -e "create user '$MYSQL_DB_USER'@'%' identified by '$MYSQL_DB_PASSWORD';" && \
	mysql -e "grant all privileges on $MYSQL_DB_NAME.* to '$MYSQL_DB_USER'@'%';"

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysqld"]
