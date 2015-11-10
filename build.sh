#!/usr/bin/env bash

ORG=reefrt
for DIR in `ls -d ubuntu12.04*`
do
    IMAGE=$DIR
    TAG=${DIR##*-}
    echo $DIR $ORG/$TAG
    docker build -t $ORG/$IMAGE $DIR
    docker tag -f $ORG/$IMAGE $TAG
done
docker tag -f $ORG/ubuntu12.04-jdk7-apache2.7.1 $ORG/apache2.7
docker tag -f $ORG/ubuntu12.04-jdk7-hdp2.1.15 $ORG/hdi3.1
docker tag -f $ORG/ubuntu12.04-jdk7-hdp2.2.7 $ORG/hdi3.2
