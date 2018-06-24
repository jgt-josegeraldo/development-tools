FROM centos:7
MAINTAINER rubeus <rubeusteam@gmail.com>

# Packages
RUN yum update -y

RUN yum install -y curl wget gcc-c++ make git sudo

RUN yum groupinstall -y 'Development Tools'

RUN curl --silent --location https://rpm.nodesource.com/setup_9.x |  bash -

RUN yum -y install nodejs

RUN useradd -r -u ${UID} -g root ${USERNAME}

RUN mkdir  /home/${USERNAME}

RUN echo "${USERNAME} ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} && chmod 0440 /etc/sudoers.d/${USERNAME}

RUN chown -R ${USERNAME}:root /usr/local
RUN chown -R ${USERNAME} /home/${USERNAME}

# Set up the volumes and working directory
VOLUME ["/usr/local/lib/node_modules"]
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
