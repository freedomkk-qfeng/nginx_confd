#!/bin/bash
/usr/sbin/nginx -c /confd/nginx.conf &
echo nginx started...
confd -confdir /confd -interval 5 -node 172.17.42.1:2379
