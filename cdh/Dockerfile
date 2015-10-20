FROM habam/centos6.7-jdk8u60
MAINTAINER Bruce Li (a.k.a. Habam) <bruce.li@ellipsiz-comms.com>

RUN wget http://archive.cloudera.com/cdh5/one-click-install/redhat/6/x86_64/cloudera-cdh-5-0.x86_64.rpm \
&& yum --nogpgcheck localinstall -y cloudera-cdh-5-0.x86_64.rpm \
&& rm -f cloudera-cdh-5-0.x86_64.rpm \
&& rpm --import http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera
