#!/bin/bash

echo "Provisioning linux-master machine..."

echo "Installing downstream dependencies..."
apt update -y > /dev/null 2>&1
apt-get install openjdk-8-jre libgif7 -y > /dev/null 2>&1
apt-get install libevent-dev libsvn1 libcurl4-openssl-dev -y > /dev/null 2>&1

echo "Installing and starting zookeeper..."
apt-get install zookeeperd zookeeper -y > /dev/null 2>&1
service zookeeper start  > /dev/null 2>&1

echo "Installing mesos..."
curl -sLO http://repos.mesosphere.com/ubuntu/pool/main/m/mesos/mesos_1.8.0-2.0.6.ubuntu1604_amd64.deb && sudo dpkg -i mesos_1.8.0-2.0.6.ubuntu1604_amd64.deb
mkdir mesos-workdir

echo "Installing Marathon..."
curl -sLO https://downloads.mesosphere.io/marathon/builds/1.7.189-48bfd6000/marathon-1.7.189-48bfd6000.tgz
tar xvzf marathon-1.7.189-48bfd6000.tgz

echo "Finished provisioning."
