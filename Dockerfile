FROM php:7.2-fpm
MAINTAINER Tackacoder <edouard@tackacoder.fr>

RUN cd /usr/src/php; \
    ./configure \
    --enable-intl \
    --enable-xml \
    --enable-zip;
