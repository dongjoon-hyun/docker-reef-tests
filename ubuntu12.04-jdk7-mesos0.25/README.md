Apache REEF (incubator) Docker Tests for Apache Mesos 0.25
==========================================================

This project aims to provide a docker image and related scripts to simulate 
[Apache REEF (incubator)](http://reef.incubator.apache.org/) testing on 
Apache Mesos 0.25 linux cluster as possible as it can. 

Components
----------

* Ubuntu 12.04.5 LTS
* Oracle JDK 1.7.0_80
* Apache Mesos 0.25

Requirements
------------

Please download Apache REEF in your home, i.e. ~/incubator-reef, and build
it successfully. You can find a guide for this 
[here](https://cwiki.apache.org/confluence/display/REEF/Compiling+REEF).

Run
---
You can run tests on a docker cluster easily.

> $ run-cluster.sh mesos0.25

> ...

> $ root@hnn-001-01:~# mesos-execute --master=hnn-001-01:5050 --name="HelloWorld" --command="echo 'Hello World'"

> $ root@hnn-001-01:~# cd /reef

> $ root@hnn-001-01:~# ./bin/runmesostests.sh hnn-001-01:5050
