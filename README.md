Apache REEF (incubator) Docker Tests
====================================

[Apache REEF (incubator)](http://reef.incubator.apache.org/) is an approach
to simplify and unify the lower layers of big data systems on modern resource managers.
This project maintains docker images to simulate the target underlying systems.

Docker-based Test Cluster
-------------------------

| OS                 | JDK                 | Hadoop Version            | Description    | alias  |
|--------------------|---------------------|---------------------------|----------------|--------|
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | HDP 2.1.15 (Hadoop 2.4.0) | HDInsight 3.1  | hdi3.1 |
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | HDP 2.2.7  (Hadoop 2.6.0) | HDInsight 3.2  | hdi3.2 |
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | HDP 2.2.8  (Hadoop 2.6.0) | HDInsight 3.2x | hdp2.2 |
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | HDP 2.3.2  (Hadoop 2.7.1) |                | hdp2.3 |
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | Apache Hadoop 2.7.1       |                | apache |
| Ubuntu 12.04.5 LTS | Oracle JDK 1.7.0_80 | Apache Mesos 0.25.0       |                | mesos  |

Build and Run
-----

```sh
build.sh
run-cluster hdi3.2
```
