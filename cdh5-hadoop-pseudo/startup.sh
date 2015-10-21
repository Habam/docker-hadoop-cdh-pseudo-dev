#!/bin/sh
for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x start ; done
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start 
service hadoop-mapreduce-historyserver start
