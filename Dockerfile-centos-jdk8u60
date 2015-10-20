FROM centos:centos6.7
MAINTAINER Bruce Li <bruce.li@ellipsiz-comms.com>

RUN yum update -y
RUN yum install -y wget && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm
RUN rpm -ivh jdk-8u60-linux-x64.rpm && rm jdk-8u60-linux-x64.rpm
