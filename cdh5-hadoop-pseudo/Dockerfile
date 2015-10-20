FROM habam/cdh5-base
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN yum clean all \
&& yum install -y hadoop-conf-pseudo \
&& gosu hdfs hdfs namenode -format \
&& for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x start ; done \
&& /usr/lib/hadoop/libexec/init-hdfs.sh
