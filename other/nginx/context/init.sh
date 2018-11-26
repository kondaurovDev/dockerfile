#!/usr/bin/env sh

set -e

cat > default.conf <<_EOF_
server {
  listen       80;
  server_name  localhost;

  location / {
    root   /list-dir;
    autoindex_exact_size off;
    autoindex on;
  }

}
_EOF_
