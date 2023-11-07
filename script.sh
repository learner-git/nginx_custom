#!/bin/sh

nginx 2&> /dev/null
while true; do
  MY_SECRET=$(cat /mnt/shared 2&> /dev/null)
  if [ ! -z "$MY_SECRET" ]; then
    echo "Environment variable is $MY_SECRET"
    sed 's/CUSTOM/'''$MY_SECRET'''/g' /usr/share/nginx/html/index_org.html > /usr/share/nginx/html/index.html
    sleep 5
  else
    sleep 5
  fi
done