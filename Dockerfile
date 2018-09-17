FROM wordpress:latest

MAINTAINER Ryan Foster <phasecorex@gmail.com>

RUN a2enmod ext_filter
RUN a2enmod headers

RUN pecl install redis
RUN docker-php-ext-enable redis
