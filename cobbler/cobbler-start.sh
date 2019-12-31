#!/bin/bash
set -e
docker build . -t cobbler
docker_run="docker run -d --rm --network="host" -e HOST_IP=192.168.1.229"
$docker_run --name cobbler -p 25151:25151 cobbler > cobbler.pid
$docker_run --name httpd -p 80:80 cobbler /usr/sbin/httpd -DFOREGROUND > httpd.pid
$docker_run --name dnsmasq cobbler /usr/sbin/dnsmasq --no-daemon > dnsmasq.pid


