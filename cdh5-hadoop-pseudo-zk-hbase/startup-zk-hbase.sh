#!/bin/sh
service zookeeper-server start
service hbase-master start
service hbase-regionserver start

# for infinite foreground running
tail -f /dev/null
