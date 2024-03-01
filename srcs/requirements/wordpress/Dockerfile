FROM debian:bullseye

WORKDIR /var/www/html

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y php7.4-fpm curl php-mysql&& \
	mkdir -p /var/run/php/ && \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
	wp core download --allow-root && \
	wp config create --allow-root --dbname=$(MYSQL_DB_NAME) --dbuser=$MYSQL_DB_USER --dbpass=$MYSQL_DB_PASSWORD --dbhost=mariadb --dbprefix=wp_
	# wp core install --url=example.com  --title="WordPress Website Title" --admin_user=admin_user --admin_password=admin_password --admin_email="admin@example.com"


COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD ["php-fpm7.4", "-F"]
