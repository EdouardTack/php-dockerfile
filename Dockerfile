FROM php:7.2-fpm
MAINTAINER Tackacoder <edouard@tackacoder.fr>

RUN apt-get update -q && apt-get install -qqy \
    php-mcrypt \
    php-mbstring \
    php-mysql \
    php-intl \
    php-xml \
    php-zip
