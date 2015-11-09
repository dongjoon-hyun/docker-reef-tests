#!/usr/bin/env bash

for DIR in `ls -d ubuntu12.04*`
do
    IMAGE=$DIR
    TAG=${DIR##*-}
    echo $DIR $TAG
    docker build -t $IMAGE $DIR
    docker tag -f $IMAGE $TAG
done
