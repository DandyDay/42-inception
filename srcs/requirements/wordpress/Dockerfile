FROM debian:bullseye

COPY tools/docker-entrypoint.sh /tmp/docker-entrypoint.sh

WORKDIR /var/www/html

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y php7.4-fpm curl php-mysql&& \
	mkdir -p /var/run/php/ && \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
	chmod 755 /tmp/docker-entrypoint.sh

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

ENTRYPOINT [ "/bin/bash", "/tmp/docker-entrypoint.sh" ]

CMD ["php-fpm7.4", "-F"]
