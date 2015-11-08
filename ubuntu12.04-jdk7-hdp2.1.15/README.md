Apache REEF (incubator) Docker Tests for HDInsight 3.1
======================================================

This project aims to provide a docker image and related scripts to simulate 
[Apache REEF (incubator)](http://reef.incubator.apache.org/) testing on 
HDInsight 3.1 linux cluster<sup>[1](#note1)</sup> as possible as it can. 

Components
----------

The components of this docker images are based on HDInsight 
Documentation<sup>[2](#note2)</sup> and release notes<sup>[3](#note3)</sup>.

* Ubuntu 12.04.5 LTS
* Oracle JDK 1.7.0_80
* HDP 2.1.15 (Hadoop 2.4.0)

Requirements
------------

Please download Apache REEF in your home, i.e. ~/incubator-reef, and build
it successfully. You can find a guide for this 
[here](https://cwiki.apache.org/confluence/display/REEF/Compiling+REEF).

Run
---
You can run tests on a docker cluster easily.

> $ sudo docker pull docker-reef-tests/ubuntu12.04-jdk7-hdp2.1.15

> $ bash -c "$(curl -fsSL https://raw.githubusercontent.com/dongjoon-hyun/docker-reef-tests/master/ubuntu12.04-jdk7-hdp2.1.15/run-cluster.sh)"

> ...

> $ root@hnn-001-01:~# cd /reef

> $ root@hnn-001-01:~# ./bin/runyarntests.sh

Reference
---------
* <a name="note1">1</a>: https://azure.microsoft.com/en-us/updates/general-availability-apache-hadoop-on-linux-in-hdinsight/
* <a name="note2">2</a>: https://azure.microsoft.com/en-us/documentation/articles/hdinsight-component-versioning/
* <a name="note3">3</a>: https://azure.microsoft.com/en-us/updates/general-availability-apache-hadoop-on-linux-in-hdinsight/

