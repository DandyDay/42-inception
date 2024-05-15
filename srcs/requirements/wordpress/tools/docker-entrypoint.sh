#!/bin/bash

if [ ! -f "config.php" ]; then
	wp core download --allow-root
	wp config create --allow-root --dbname=$MYSQL_DB_NAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --dbprefix=wp_
	wp core install --allow-root --url="$DOMAIN_NAME" --title="$WP_SITE_TITLE" --admin_user="$WP_ADMIN_USER" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN_EMAIL"
	wp user create --allow-root $WP_NEW_USER $WP_NEW_EMAIL --user_pass=$WP_NEW_PASSWORD
fi

exec "$@"
# php-fpm7.4 -F
