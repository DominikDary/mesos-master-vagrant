# mesos-master-vagrant

This repository is setting up a mesos master server on linux.

# Get started

```Bash
git clone https://github.com/DominikDary/mesos-master-vagrant
cd mesos-master-vagrant
vagrant up
vagrant ssh

//start zookeeper
sudo /etc/init.d/zookeeper start

//start mesos master
nohup mesos-master --work_dir=log --zk=zk://localhost:2181/mesos --quorum=1 --ip=172.28.128.5 &

//start marathon
cd marathon-1.7.189-48bfd6000
./bin/marathon --master zk://localhost:2181,localhost:2181/mesos --zk zk://localhost:2181,localhost:2181/marathon
```
Visit the UI of

* [Mesos Admin UI](http://172.28.128.5:5050)
* [Marathon Admin UI](http://172.28.128.5:8080)

