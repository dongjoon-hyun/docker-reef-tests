Apache REEF Docker Tests
====================================

[Apache REEF™](http://reef.apache.org/), Retainable Evaluator Execution Framework, is a library for developing portable applications for cluster resource managers such as Apache Hadoop™ YARN or Apache Mesos™.
This project maintains docker images to simulate the target underlying systems.

Docker-based Test Cluster
-------------------------

| OS           | Java            | Hadoop Version            | alias         |
|--------------|-----------------|---------------------------|---------------|
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.1.15 (Hadoop 2.4.0) | hdi3.1        |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.2.9  (Hadoop 2.6.0) | hdp2.2,hdi3.2 |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.3.4  (Hadoop 2.7.1) | hdp2.3        |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.4.2  (Hadoop 2.7.1) | hdp2.4        |
| Ubuntu 12.04 | Oracle JDK 7u80 | HDP 2.5.0  (Hadoop 2.7.3) | hdp2.5        |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Hadoop 2.7.3       | apache2.7     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.24.2       | mesos0.24     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.25.1       | mesos0.25     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.26.1       | mesos0.26     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.27.2       | mesos0.27     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 0.28.2       | mesos0.28     |
| Ubuntu 12.04 | Oracle JDK 7u80 | Apache Mesos 1.0.0        | mesos1.0      |

Build and Run
-------------

```sh
./build.sh
./run-cluster.sh reefrt/hdp2.5
```

Reference
---------
* Ubuntu OS: https://hub.docker.com/_/ubuntu/
* Java: https://github.com/dockerfile/java/tree/master/oracle-java7
* Hadoop: https://hadoop.apache.org/docs/stable/hadoop-yarn/hadoop-yarn-site/DockerContainerExecutor.html
* Hadoop: https://github.com/sequenceiq/hadoop-docker
* Mesos: https://mesos.apache.org/gettingstarted
* Prebuilt Mesos: https://mesosphere.com/downloads
