FROM airdock/apache
MAINTAINER rubeus <rubeusteam@gmail.com>

ARG UID

ARG USERNAME

RUN apt-get update && apt-get -yq upgrade && \
    apt-get -yq install \
        curl \
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

RUN a2enmod rewrite

RUN sed -i "s/variables_order.*/variables_order = \"EGPCS\"/g" /etc/php5/apache2/php.ini


RUN sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

RUN useradd -r -u $UID -g root  $USERNAME

RUN mkdir  /home/$USERNAME

RUN echo "$USERNAME ALL=(root) NOPASSWD:ALL" > /etc/sudoers

RUN chown -R $USERNAME:root /usr/local
RUN chown -R $USERNAME /home/$USERNAME

RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html
# ADD sample/ /app

# EXPOSE 80
WORKDIR /app

# CMD ["apache2ctl","start"]
