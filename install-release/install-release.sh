#!/bin/bash

VER="v4.32.1"

CONFIG_LINK="https://raw.githubusercontent.com/lshxf/kintohub-1/master/config.json"
mkdir -p /tmp/ray
mkdir -p /usr/bin/ray

mkdir -p /etc/ray

curl -L -o "/tmp/ray/ray.zip" ${DOWNLOAD_LINK}
unzip "/tmp/ray/ray.zip" -d "/usr/bin/ray/"

curl -L -o "/etc/ray/config.json" ${CONFIG_LINK}

mkdir -p /var/log/ray

chmod +x "/usr/bin/ray/ray"

