#!/bin/bash

/usr/sbin/sshd

/root/sync-hosts.sh

grep hdn /etc/hosts | awk '{print $1}' | sort | uniq > $HADOOP_PREFIX/etc/hadoop/slaves
for host in `cat $HADOOP_PREFIX/etc/hadoop/slaves`
do
    echo $host
    scp $HADOOP_PREFIX/etc/hadoop/slaves $host:$HADOOP_PREFIX/etc/hadoop/slaves
done

/usr/local/hadoop/bin/hdfs namenode -format
/usr/local/hadoop/sbin/start-dfs.sh
/usr/local/hadoop/sbin/start-yarn.sh

cd ~ && /bin/bash
