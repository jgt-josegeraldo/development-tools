FROM rubeus/php7
MAINTAINER rubeus <rubeusteam@gmail.com>

# Packages
RUN yum update -y

RUN yum install -y git autoconf \
    build-base \
    curl \
    git \
    subversion \
    freetype-dev \
    libjpeg-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libbz2 \
    libstdc++ \
    libxslt-dev \
    openldap-dev \
    make \
    unzip \
    wget


RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
  && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
  && php  /tmp/composer-setup.php \
  && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
  && mv composer.phar /usr/local/bin/composer

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
