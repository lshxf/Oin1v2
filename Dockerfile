FROM ubuntu:14.04
RUN apt-get -qq update
RUN apt-get install -q -y git curl unzip daemon
RUN mkdir -p /usr/internet/
ADD install-release.zip /install-release.zip
RUN unzip install-release.zip
RUN rm -f install-release.zip
RUN cp -r install-release.sh /usr/internet/install-release.sh
RUN chmod +x /usr/internet/install-release.sh
EXPOSE 8888
CMD ["bash", "/usr/internet/install-release.sh"]
