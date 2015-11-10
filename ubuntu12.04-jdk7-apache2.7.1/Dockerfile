FROM reefrt/ubuntu12.04-jdk7
MAINTAINER Dongjoon Hyun <dongjoon@apache.org>

# Apache Hadoop 2.7.1
RUN \
  cd /usr/local && wget -q http://www.us.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz && \
  tar -xzf hadoop-2.7.1.tar.gz && \
  ln -s ./hadoop-2.7.1 hadoop && \
  rm hadoop-2.7.1.tar.gz

ENV HADOOP_PREFIX /usr/local/hadoop
ENV YARN_CONF_DIR /usr/local/hadoop/etc/hadoop
RUN \
  echo 'HADOOP_PREFIX="/usr/local/hadoop"' >> /etc/environment && \
  echo 'HADOOP_COMMON_HOME="/usr/local/hadoop"' >> /etc/environment && \
  echo 'HADOOP_HDFS_HOME="/usr/local/hadoop"' >> /etc/environment && \
  echo 'HADOOP_MAPRED_HOME="/usr/local/hadoop"' >> /etc/environment && \
  echo 'HADOOP_YARN_HOME="/usr/local/hadoop"' >> /etc/environment && \
  echo 'HADOOP_CONF_DIR="/usr/local/hadoop/etc/hadoop"' >> /etc/environment && \
  echo 'YARN_CONF_DIR="/usr/local/hadoop/etc/hadoop"' >> /etc/environment
ENV PATH $PATH:$HADOOP_PREFIX/bin:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX-yarn/bin:$HADOOP_PREFIX-yarn/sbin:$HADOOP_PREFIX-hdfs/bin:$HADOOP_PREFIX-hdfs/sbin

RUN sed -i '/^export JAVA_HOME/ s:.*:export JAVA_HOME=$JAVA_HOME\nexport HADOOP_PREFIX=/usr/local/hadoop\nexport HADOOP_HOME=/usr/local/hadoop\n:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh
RUN sed -i '/^export HADOOP_CONF_DIR/ s:.*:export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop/:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh

COPY core-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY hdfs-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY mapred-site.xml $HADOOP_PREFIX/etc/hadoop/
COPY yarn-site.xml $HADOOP_PREFIX/etc/hadoop/

RUN chmod +x /usr/local/hadoop/etc/hadoop/*-env.sh
COPY init-nn.sh /root/

EXPOSE 22 7077 8020 8030 8031 8032 8033 8040 8042 8080 8088 10000 50010 50020 50060 50070 50075 50090
