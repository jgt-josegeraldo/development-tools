FROM centos:7
MAINTAINER rubeus <robloach@gmail.com>

# Packages
RUN yum update -y

RUN yum install -y curl wget gcc-c++ make git sudo

RUN yum groupinstall -y 'Development Tools'

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x |  bash -

RUN yum -y install nodejs

RUN useradd -r -u 1000 -g root jose

RUN mkdir  /home/jose

RUN echo "jose ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/jose && chmod 0440 /etc/sudoers.d/jose

RUN chown -R jose:root /usr/local
RUN chown -R jose /home/jose

# Set up the volumes and working directory
VOLUME ["/usr/local/lib/node_modules"]
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
