FROM habam/cdh5-hadoop-pseudo
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN yum install -y zookeeper-server hbase-master hbase-regionserver \
&& mkdir -p /var/lib/zookeeper \
&& chown -R zookeeper /var/lib/zookeeper/ \
&& service zookeeper-server init --myid=1

COPY hbase.conf /etc/security/limits.d/
COPY hbase-site.xml /etc/hbase/conf/
COPY startup-zk-hbase.sh /root/

CMD /root/startup-zk-hbase.sh

EXPOSE 2181 60010 


