FROM php:8.2.15-fpm-alpine3.18

WORKDIR /var/www/html

COPY src .

RUN chown -R www-data:www-data /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

