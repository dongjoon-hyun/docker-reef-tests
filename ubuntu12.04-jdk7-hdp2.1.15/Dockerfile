FROM ubuntu:12.04
MAINTAINER Dongjoon Hyun <dongjoon@apache.org>

RUN apt-get update && apt-get install -y openssh-server python-software-properties

RUN mkdir /var/run/sshd
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

COPY config /root/.ssh/
COPY start.sh /root/
COPY sync-hosts.sh /root/

# java
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk7-installer

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $PATH:$JAVA_HOME/bin
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-7-oracle"' >> /etc/environment

# HDP 2.1.15
RUN \
  wget http://public-repo-1.hortonworks.com/HDP/ubuntu12/2.x/updates/2.1.15.0/hdp.list -O /etc/apt/sources.list.d/hdp.list && \
  gpg --keyserver pgp.mit.edu --recv-keys B9733A7A07513CAD && \
  gpg -a --export 07513CAD | apt-key add - && \
  apt-get update
RUN apt-get install -y hadoop hadoop-hdfs hadoop-yarn hadoop-mapreduce hadoop-client
ENV CLASSPATH $CLASSPATH:/usr/lib/hadoop/client/*
ENV HADOOP_PREFIX /usr/lib/hadoop
ENV HADOOP_LIBEXEC_DIR /usr/lib/hadoop/libexec

ENV YARN_CONF_DIR $HADOOP_PREFIX/etc/hadoop
RUN \
  echo 'HADOOP_PREFIX="/usr/lib/hadoop"' >> /etc/environment && \
  echo 'HADOOP_LIBEXEC_DIR="/usr/lib/hadoop/libexec"' >> /etc/environment && \
  echo 'HADOOP_COMMON_HOME="/usr/lib/hadoop"' >> /etc/environment && \
  echo 'HADOOP_HDFS_HOME="/usr/lib/hadoop-hdfs"' >> /etc/environment && \
  echo 'HADOOP_MAPRED_HOME="/usr/lib/hadoop"' >> /etc/environment && \
  echo 'HADOOP_YARN_HOME="/usr/lib/hadoop-yarn"' >> /etc/environment && \
  echo 'HADOOP_CONF_DIR="/usr/lib/hadoop/etc/hadoop"' >> /etc/environment && \
  echo 'YARN_CONF_DIR="/usr/lib/hadoop/etc/hadoop"' >> /etc/environment
ENV PATH $PATH:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX-yarn/bin:$HADOOP_PREFIX-yarn/sbin:$HADOOP_PREFIX-hdfs/bin:$HADOOP_PREFIX-hdfs/sbin

COPY core-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY hdfs-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY mapred-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY yarn-site.xml $HADOOP_PREFIX/etc/hadoop/

COPY init-nn.sh /root/

EXPOSE 22 7077 8020 8030 8031 8032 8033 8040 8042 8080 8088 10000 50010 50020 50060 50070 50075 50090
