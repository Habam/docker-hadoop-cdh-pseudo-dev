FROM habam/cdh5-base
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN yum clean all \
&& yum install -y hadoop-conf-pseudo \
&& gosu hdfs hdfs namenode -format \

COPY hdfs.conf /etc/security/limits.d/

RUN for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x start ; done \
&& /usr/lib/hadoop/libexec/init-hdfs.sh \
&& service hadoop-yarn-resourcemanager start \
&& service hadoop-yarn-nodemanager start \
&& service hadoop-mapreduce-historyserver start

EXPOSE 8020 8088 50070
