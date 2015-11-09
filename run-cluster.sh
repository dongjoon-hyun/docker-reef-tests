#!/usr/bin/env bash

IMAGE=${1:-hdi3.2}
echo "Using $IMAGE"
if [[ $IMAGE == *"mesos"* ]]
then
   PRIVILEGED='--privileged=true'
fi

LINK=""
for i in {1..3}
do
    HOST=hdn-001-0$i
    LINK="$LINK --link=$HOST:$HOST"
    docker run $PRIVILEGED --name=$HOST -h $HOST -p 1001$i:22 -d $IMAGE /root/start.sh
done

HOST=hnn-001-01
PORT="-p 8088:8088 -p 10000:10000 -p 10010:22 -p 26002:26002 -p 26080:26080 -p 50070:50070"
docker run $PRIVILEGED --name=$HOST -h $HOST $PORT $LINK -it --rm -v ~/incubator-reef:/reef -e REEF_HOME=/reef $IMAGE /root/init-nn.sh

for i in {1..3}
do
    docker rm -f hdn-001-0$i
done
