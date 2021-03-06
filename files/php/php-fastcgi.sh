#!/bin/bash
# MANAGED BY PUPPET
# Module:: nginxpack::php
# File:: nginxpack/files/php/php-fastcgi.sh

FASTCGI_USER=www-data
FASTCGI_GROUP=www-data
SOCKET=/var/run/php-fastcgi/php-fastcgi.socket
PIDFILE=/var/run/php-fastcgi/php-fastcgi.pid
CHILDREN=6
PHP5=/usr/bin/php5-cgi

/usr/bin/spawn-fcgi -s $SOCKET -P $PIDFILE -C $CHILDREN -u $FASTCGI_USER -g $FASTCGI_GROUP -f $PHP5
