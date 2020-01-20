FROM php:7.2-fpm
MAINTAINER Tackacoder <edouard@tackacoder.fr>

RUN apt-get update -q && apt-get install -qqy \
	# Installing mod-php installs both recommended PHP 7 and Apache2
	libapache2-mod-php \
	php-mcrypt \
	php-intl \
	php-mbstring \
	php-zip \
	php-xml \
	php-mysql && \
	# Delete all the apt list files since they're big and get stale quickly
	rm -rf /var/lib/apt/lists/*
