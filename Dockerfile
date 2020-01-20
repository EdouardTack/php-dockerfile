FROM php:7.2-fpm
MAINTAINER Tackacoder <edouard@tackacoder.fr>

RUN apt-get update -q

RUN apt-get install software-properties-common -qqy

RUN add-apt-repository ppa:ondrej/php -qqy

RUN apt-get install -qqy \
    php7.2-mcrypt \
    php7.2-mbstring \
    php7.2-mysql \
    php7.2-intl \
    php7.2-xml \
    php7.2-zip
