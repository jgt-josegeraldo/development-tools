FROM centos:7
MAINTAINER rubeus <robloach@gmail.com>

# Packages
RUN yum update -y

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y yum-utils

RUN yum-config-manager --enable remi-php72

RUN yum install -y php-fpm php-opcache php-common php-cli php-devel \
                    php-mbstring php-mysql php-mcrypt php-pdo php-pecl-imagick \
                    php-pecl-xdebug php-xmlrpc php-xml php-soap php-yaml \
                    php-curl php

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
