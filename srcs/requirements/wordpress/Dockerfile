FROM debian:bullseye

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y php7.4-fpm wget && \
    wget https://wordpress.org/wordpress-6.4.3.tar.gz && \
	mkdir -p /var/www/html && \
    tar -xzf wordpress-6.4.3.tar.gz -C /var/www/html && \
	mkdir -p /var/run/php/ && \
	mv /var/www/html/wordpress/* /var/www/html/

COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD ["php-fpm7.4", "-F"]
