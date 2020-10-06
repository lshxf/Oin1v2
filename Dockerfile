# Dockerfile
#
# Version: 1.3.0

FROM centos


# install git & curl & unzip & daemon
# RUN yum install -q -y git curl unzip daemon

# run install script
RUN mkdir -p /usr/v2/
ADD install-release.sh /usr/v2/install.sh
RUN chmod +x /usr/v2/install.sh

EXPOSE 8888

CMD ["bash", "/usr/v2/install.sh"]
