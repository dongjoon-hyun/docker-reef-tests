#!/bin/bash

/usr/sbin/sshd

/root/sync-hosts.sh

hostname > /usr/etc/mesos/masters
grep hdn /etc/hosts | awk '{print $1}' | sort | uniq > $HADOOP_PREFIX/etc/hadoop/slaves
cp $HADOOP_PREFIX/etc/hadoop/slaves /usr/etc/mesos/slaves
for host in `cat $HADOOP_PREFIX/etc/hadoop/slaves`
do
    echo $host
    scp $HADOOP_PREFIX/etc/hadoop/slaves $host:$HADOOP_PREFIX/etc/hadoop/slaves
    scp /usr/etc/mesos/masters $host:/usr/etc/mesos/masters
    scp /usr/etc/mesos/slaves $host:/usr/etc/mesos/slaves
    ssh $host nohup mesos-daemon.sh mesos-slave --master=172.17.0.5:5050 --docker_mesos_image=ubuntu12.04-jdk7-mesos0.25
done

/usr/local/hadoop/bin/hdfs namenode -format
/usr/local/hadoop/sbin/start-dfs.sh
mesos-daemon.sh mesos-master --cluster=REEF --work_dir=/var/lib/mesos --log_dir=/var/log/mesos

cd ~ && /bin/bash
