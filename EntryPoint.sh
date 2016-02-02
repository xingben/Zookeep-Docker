#!/bin/bash
set -e

sed -i "s|{{MYID}}|$MYID|;s|{{HOSTNAME}}|$HOSTNAME|" /opt/zookeeper/conf/zoo.cfg
cat /opt/zookeeper/conf/zoo.cfg

sed -i "s|{{MYID}}|$MYID|" /tmp/zookeeper/myid
cat /tmp/zookeeper/myid

exec "$@"
