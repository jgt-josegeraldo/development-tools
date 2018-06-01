FROM centos:7
MAINTAINER rubeus <robloach@gmail.com>

# Packages
RUN yum update -y

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum update -y

RUN yum install -y php56w-fpm php56w-opcache php56w-common php56w-cli php56w-devel \
                    php56w-mbstring php56w-mysql php56w-mcrypt php56w-pdo php56w-pecl-imagick \
                    php56w-pecl-xdebug php56w-xmlrpc php56w-xml php56w-soap

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
