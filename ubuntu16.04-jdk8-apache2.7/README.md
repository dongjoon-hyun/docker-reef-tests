Apache REEF Docker Tests for Apache Hadoop 2.7.2 (Dev)
============================================================

This project aims to provide a docker image and related scripts to simulate 
[Apache REEF](http://reef.apache.org/) testing on 
Apache Hadoop 2.7.2 linux cluster as possible as it can.

Components
----------

* Ubuntu 16.04 LTS
* Oracle JDK 1.8.0_80
* Apache Hadoop 2.7.2

Requirements
------------

Please download Apache REEF in your home, i.e. ~/reef, and build
it successfully. You can find a guide for this 
[here](https://cwiki.apache.org/confluence/display/REEF/Compiling+REEF).

Run
---
You can run tests on a docker cluster easily.

> $ run-cluster.sh reefrt/apache2.7

> ...

> $ root@hnn-001-01:~# cd /reef

> $ root@hnn-001-01:~# ./bin/runyarntests.sh

