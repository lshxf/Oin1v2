#!/bin/bash

VER="v4.32.1"



CONFIG_LINK="https://raw.githubusercontent.com/lshxf/kintohub-1/master/config.json"
mkdir -p /tmp/ray
# Install V2Ray binary to /usr/bin/v2ray
mkdir -p /usr/bin/ray

mkdir -p /etc/v2ray

curl -L -o "/tmp/ray/ray.zip" ${DOWNLOAD_LINK}
unzip "/tmp/ray/ray.zip" -d "/usr/bin/v2ray/"

curl -L -o "/etc/ray/config.json" ${CONFIG_LINK}

# Create folder for V2Ray log
mkdir -p /var/log/ray

chmod +x "/usr/bin/ray/ray"

