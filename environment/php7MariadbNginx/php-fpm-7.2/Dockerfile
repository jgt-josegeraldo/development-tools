FROM ubuntu:trusty
MAINTAINER Adam Kucharczyk <108adams@gmail.com>

# Install base packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -yq upgrade && \
    apt-get -yq install \
        curl \
        apache2 \
        libapache2-mod-php5 \
        php5-mysql \
	php5-pgsql \
        php5-gd \
        php5-curl \
        php-pear \
	php5-json \
	php5-xdebug \
	php5-mcrypt \
        php-apc && \
    rm -rf /var/lib/apt/lists/* && \
    php5enmod mcrypt && \
    php5enmod json

RUN sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php5/apache2/php.ini
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add image configuration and scripts
ADD run.sh /run.sh
RUN chmod 755 /*.sh

# Configure /app folder with sample app
RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html
ADD sample/ /app

RUN useradd -r -u 1000 -g root jose

RUN mkdir  /home/jose

RUN echo "jose ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/jose && chmod 0440 /etc/sudoers.d/jose

RUN chown -R jose:root /usr/local
RUN chown -R jose /home/jose

ENV APACHE_RUN_USER jose
ENV APACHE_RUN_GROUP jose

RUN adduser --uid 1000 --gecos 'My Apache User' --disabled-password jose \
             && chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" /var/lock/apache2 /var/run/apache2 /var/www/html

# Add application code onbuild
ONBUILD RUN rm -fr /app
ONBUILD ADD . /app
ONBUILD RUN chown jose:jose /app -R

EXPOSE 80
WORKDIR /app
CMD ["/run.sh"]


#FROM tutum/apache-php
#RUN apt-get update && apt-get install -yq git && rm -rf /var/lib/apt/lists/*
#RUN rm -fr /app
#ADD . /app
#RUN composer install

# FROM tutum/apache-php
# FROM phpdockerio/php72-fpm:latest
# WORKDIR "/application"

# Install selected extensions and other stuff
# RUN apt-get update \
#    && apt-get -y --no-install-recommends install  php-memcached php7.2-mysql php-xdebug php7.2-gd php-imagick php7.2-odbc php7.2-phpdbg php7.2-soap php-ssh2 php7.2-xsl php-yaml \
#    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
