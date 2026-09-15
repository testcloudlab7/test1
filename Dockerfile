FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    git \
    libzip-dev

RUN docker-php-ext-install zip

COPY . /var/www/html

WORKDIR /var/www/html

RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 80