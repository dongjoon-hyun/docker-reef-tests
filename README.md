Apache REEF Docker Tests
====================================

[Apache REEF](http://reef.apache.org/) is an approach
to simplify and unify the lower layers of big data systems on modern resource managers.
This project maintains docker images to simulate the target underlying systems.

Docker-based Test Cluster
-------------------------

| OS           | Java            | Hadoop Version            | Description   | alias     |
|--------------|-----------------|---------------------------|---------------|-----------|
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.1.15 (Hadoop 2.4.0) | HDInsight 3.1 | hdi3.1    |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.2.7  (Hadoop 2.6.0) | HDInsight 3.2 | hdi3.2    |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.2.8  (Hadoop 2.6.0) |               | hdp2.2    |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.3.2  (Hadoop 2.7.1) |               | hdp2.3    |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Hadoop 2.7.2       |               | apache2.7 |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.24.1       |               | mesos0.24 |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.25.0       |               | mesos0.25 |

Build and Run
-------------

```sh
build.sh
run-cluster reefrt/hdi3.2
```

Reference
---------
* Ubuntu OS: https://hub.docker.com/_/ubuntu/
* Java: https://github.com/dockerfile/java/tree/master/oracle-java7
* Hadoop: https://hadoop.apache.org/docs/stable/hadoop-yarn/hadoop-yarn-site/DockerContainerExecutor.html
* Hadoop: https://github.com/sequenceiq/hadoop-docker
* Mesos: https://mesos.apache.org/gettingstarted
* Prebuilt Mesos: https://mesosphere.com/downloads
