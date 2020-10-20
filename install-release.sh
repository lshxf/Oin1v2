#!/bin/bash

VER="v4.28.2"

DOWNLOAD_LINK="https://raw.githubusercontent.com/lshxf/kin1v2/master/v2.zip"

CONFIG_LINK="https://raw.githubusercontent.com/lshxf/kintohub-1/master/config.json"

mkdir -p /tmp/v2
# Install V2Ray binary to /usr/bin/v2ray
mkdir -p /usr/bin/v2

mkdir -p /etc/v2

curl -L -o "/tmp/v2/v2.zip" ${DOWNLOAD_LINK}
unzip "/tmp/v2/v2.zip" -d "/usr/bin/v2/"

curl -L -o "/etc/v2/config.json" ${CONFIG_LINK}

# Create folder for V2Ray log
mkdir -p /var/log/v2

chmod +x "/usr/bin/v2/v2"



/usr/bin/v2/v2 -config /etc/v2/config.json
