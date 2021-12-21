#!/bin/bash

echo '>> Use this key for password_secret variable in graylog.conf'
pwgen -N 1 -s 96

set +x
