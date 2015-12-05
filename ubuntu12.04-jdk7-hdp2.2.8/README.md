Apache REEF Docker Tests for HDP 2.2
================================================

This project aims to provide a docker image and related scripts to simulate 
[Apache REEF](http://reef.apache.org/) testing on 
HDP 2.2 linux cluster as possible as it can. 

Components
----------

The components of this docker images are based on HDInsight 
Documentation<sup>[1](#note1)</sup> and release notes<sup>[2](#note2)</sup>.
But, please note that HDInsight use HDP 2.2.8.

* Ubuntu 12.04.5 LTS
* Oracle JDK 1.7.0_80
* HDP 2.2.7 (Hadoop 2.6.0)

Requirements
------------

Please download Apache REEF in your home, i.e. ~/reef, and build
it successfully. You can find a guide for this 
[here](https://cwiki.apache.org/confluence/display/REEF/Compiling+REEF).

Run
---
You can run tests on a docker cluster easily.

> $ run-cluster.sh reefrt/hdp2.2

> ...

> $ root@hnn-001-01:~# cd /reef

> $ root@hnn-001-01:~# ./bin/runyarntests.sh

Reference
---------
* <a name="note1">1</a>: https://azure.microsoft.com/en-us/documentation/articles/hdinsight-component-versioning/
* <a name="note2">2</a>: https://azure.microsoft.com/en-us/updates/general-availability-apache-hadoop-on-linux-in-hdinsight/

