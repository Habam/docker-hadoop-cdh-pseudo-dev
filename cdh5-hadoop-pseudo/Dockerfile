FROM habam/cdh5-base
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN yum clean all \
&& yum install -y hadoop-conf-pseudo \
&& gosu hdfs hdfs namenode -format

# According to https://github.com/docker/docker/issues/7056, replace CDH setting
COPY hdfs.conf /etc/security/limits.d/hdfs.conf

# Step 2: Start HDFS
# Step 3: Create the directories needed for Hadoop processes.
RUN for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x start ; done \
&& /usr/lib/hadoop/libexec/init-hdfs.sh \
&& for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x stop ; done

COPY startup.sh /root
ENTRYPOINT ["/root/startup.sh"]

EXPOSE 8020 8088 50070
