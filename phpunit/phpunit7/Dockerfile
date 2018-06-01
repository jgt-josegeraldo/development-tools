FROM rubeus/composer7
MAINTAINER rubeus <robloach@gmail.com>

# Run some Debian packages installation.
RUN yum -y update && \
    yum install -y curl && \
    rm -rf /var/lib/apt/lists/*


# Goto temporary directory.
WORKDIR /tmp

# Run composer and phpunit installation.
RUN composer selfupdate && \
    composer require "phpunit/phpunit" --prefer-source --no-interaction && \
    ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit


# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
