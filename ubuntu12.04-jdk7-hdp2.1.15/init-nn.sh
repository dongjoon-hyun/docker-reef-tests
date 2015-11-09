#!/bin/bash

/usr/sbin/sshd

/root/sync-hosts.sh

grep hdn /etc/hosts | awk '{print $1}' | sort | uniq > $HADOOP_PREFIX/etc/hadoop/slaves
for host in `cat $HADOOP_PREFIX/etc/hadoop/slaves`
do
    echo $host
    scp $HADOOP_PREFIX/etc/hadoop/slaves $host:$HADOOP_PREFIX/etc/hadoop/slaves
done

hdfs namenode -format

hadoop-daemon.sh --script hdfs start namenode
slaves.sh /usr/lib/hadoop/sbin/hadoop-daemon.sh --script hdfs start datanode

yarn-daemon.sh start resourcemanager
slaves.sh /usr/lib/hadoop-yarn/sbin/yarn-daemon.sh start nodemanager

cd ~ && /bin/bash
