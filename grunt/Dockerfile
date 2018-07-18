FROM rubeus/node-npm
MAINTAINER rubeus <rubeusteam@gmail.com>

# Packages
RUN cd /app
RUN npm install -g grunt-cli
RUN yum -y install epel-release
RUN yum -y install bzip2
RUN yum -y install tar

# Set up the volumes and working directory
VOLUME ["/app"]
WORKDIR /app

# Set up the command arguments
CMD ["-"]
