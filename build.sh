docker build -t ubuntu12.04-jdk7-hdp2.1.15 ubuntu12.04-jdk7-hdp2.1.15
docker tag -f ubuntu12.04-jdk7-hdp2.1.15 hdi3.1
docker build -t ubuntu12.04-jdk7-hdp2.2.7 ubuntu12.04-jdk7-hdp2.2.7
docker tag -f ubuntu12.04-jdk7-hdp2.2.7 hdi3.2
docker build -t ubuntu12.04-jdk7-hdp2.2.8 ubuntu12.04-jdk7-hdp2.2.8
docker tag -f ubuntu12.04-jdk7-hdp2.2.8 hdp2.2
docker build -t ubuntu12.04-jdk7-hdp2.3.2 ubuntu12.04-jdk7-hdp2.3.2
docker tag -f ubuntu12.04-jdk7-hdp2.3.2 hdp2.3
docker build -t ubuntu12.04-jdk7-hadoop2.7.1 ubuntu12.04-jdk7-hadoop2.7.1
docker tag -f ubuntu12.04-jdk7-hadoop2.7.1 apache
docker build -t ubuntu12.04-jdk7-mesos0.25 ubuntu12.04-jdk7-mesos0.25
docker tag -f ubuntu12.04-jdk7-mesos0.25 mesos0.25
