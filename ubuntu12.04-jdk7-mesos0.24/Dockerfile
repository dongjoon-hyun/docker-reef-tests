FROM reefrt/apache2.7.1
MAINTAINER Dongjoon Hyun <dongjoon@apache.org>

RUN ln -s /usr/lib/jvm/java-7-oracle/jre/lib/amd64/server/libjvm.so /usr/bin/libjvm.so

# Apache Mesos 0.24.1
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
  echo "deb http://repos.mesosphere.io/ubuntu precise main" > /etc/apt/sources.list.d/mesosphere.list && \
  apt-get -y update && \
  apt-get install -y mesos=0.24.1-0.2.35.ubuntu1204 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
ENV HADOOP_HOME=$HADOOP_PREFIX
RUN echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/hadoop/bin"' >> /etc/environment
COPY init-nn.sh /root/

EXPOSE 22 5050
