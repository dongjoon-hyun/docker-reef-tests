Apache REEF Docker Tests for HDP 2.5
================================================

This project aims to provide a docker image and related scripts to simulate 
[Apache REEF](http://reef.apache.org/) testing on 
HDP 2.5 linux cluster as possible as it can. 

Components
----------

The docker image consists of the followings.

* Ubuntu 12.04.5 LTS
* Oracle JDK 1.7.0_80
* HDP 2.5.0 (Hadoop 2.7.3)

Requirements
------------

Please download Apache REEF in your home, i.e. ~/reef, and build
it successfully. You can find a guide for this 
[here](https://cwiki.apache.org/confluence/display/REEF/Compiling+REEF).

Run
---
You can run tests on a docker cluster easily.

> $ run-cluster.sh reefrt/hdp2.5

> ...

> $ root@hnn-001-01:~# cd /reef

> $ root@hnn-001-01:~# ./bin/runyarntests.sh

Reference
---------
* http://docs.hortonworks.com/HDPDocuments/HDP2/HDP-2.5.0/bk_command-line-installation/content/ch_getting_ready_chapter.html

