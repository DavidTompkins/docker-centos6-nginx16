#!/bin/bash

LOG="/var/log/nginx/error.log"

echo "nginx starting..."

/usr/sbin/nginx -c /etc/nginx/nginx.conf
tail -n 100 ${LOG}
