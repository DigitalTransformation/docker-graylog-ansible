#!/bin/bash

# -------------------------------
# GET: Graylog2 Config files
# Path: Use path for ../../gldata/*
# Optional manual config if environment variables are not used
# -------------------------------

mkdir -p ./config
cd ./config || exit

wget https://raw.githubusercontent.com/Graylog2/graylog-docker/3.3/config/graylog.conf
wget https://raw.githubusercontent.com/Graylog2/graylog-docker/3.3/config/log4j2.xml

set +x
