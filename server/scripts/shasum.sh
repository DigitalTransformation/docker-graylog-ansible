#!/bin/bash

# sha256sum
# Generate hash for GRAYLOG_ROOT_PASSWORD_SHA2

echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
echo '>> Use this key for root_password_sha2 in graylog.conf'

set +x
