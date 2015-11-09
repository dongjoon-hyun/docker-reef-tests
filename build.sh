#!/usr/bin/env bash

for DIR in `ls -d ubuntu12.04*`
do
    IMAGE=$DIR
    TAG=${DIR##*-}
    echo $DIR $TAG
    docker build -t $IMAGE $DIR
    docker tag -f $IMAGE $TAG
done
docker tag -f ubuntu12.04-jdk7-apache2.7.1 apache2.7
docker tag -f ubuntu12.04-jdk7-hdp2.1.15 hdi3.1
docker tag -f ubuntu12.04-jdk7-hdp2.2.7 hdi3.2
