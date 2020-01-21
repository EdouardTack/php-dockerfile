FROM php:7.2-fpm
MAINTAINER Tackacoder <edouard@tackacoder.fr>

RUN apt-get update \
	&& apt-get install -y libicu-dev \
	&& docker-php-ext-configure intl \
	&& docker-php-ext-install -j$(nproc) intl
