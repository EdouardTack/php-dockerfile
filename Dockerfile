FROM php:8.2-fpm

RUN apt-get update && apt-get install -y wget git zip unzip openssl

RUN apt-get update && apt-get install -y libzip-dev libicu-dev && docker-php-ext-install pdo zip intl opcache mbstring

# Support de MySQL
RUN docker-php-ext-install mysqli pdo_mysql

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
