FROM php:8.3-fpm

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /app
