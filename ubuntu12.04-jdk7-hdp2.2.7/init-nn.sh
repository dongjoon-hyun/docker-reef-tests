#!/bin/bash

/usr/sbin/sshd

grep hdn /etc/hosts | awk '{print $1}' | sort | uniq > $HADOOP_PREFIX/etc/hadoop/slaves
for host in `cat $HADOOP_PREFIX/etc/hadoop/slaves`
do
    scp /etc/hosts $host:/etc/hosts
    scp $HADOOP_PREFIX/etc/hadoop/slaves $host:$HADOOP_PREFIX/etc/hadoop/slaves
done

hdfs namenode -format

hadoop-daemon.sh --script hdfs start namenode
slaves.sh /usr/hdp/2.2.7.1-33/hadoop/sbin/hadoop-daemon.sh --script hdfs start datanode

yarn-daemon.sh start resourcemanager
slaves.sh /usr/hdp/2.2.7.1-33/hadoop-yarn/sbin/yarn-daemon.sh start nodemanager

cd ~ && /bin/bash
