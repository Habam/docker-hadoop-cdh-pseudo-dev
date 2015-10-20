FROM habam/cdh5-base
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN yum clean all \
&& yum install -y hadoop-conf-pseudo \
&& gosu hdfs hdfs namenode -format
