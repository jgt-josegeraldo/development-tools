FROM centos:7
MAINTAINER rubeus <rubeusteam@gmail.com>

# Packages
RUN yum update -y

RUN { \
    echo "[mariadb]"; \
    echo "name = MariaDB"; \
    echo "baseurl = http://yum.mariadb.org/10.1/centos7-amd64"; \
    echo "gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB"; \
    echo "gpgcheck=1"; \
  } >> /etc/yum.repos.d/MariaDB.repo

RUN yum update -y

RUN yum install MariaDB-server MariaDB-client -y

#RUN systemctl start mariadb

#RUN systemctl enable mariadb

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
