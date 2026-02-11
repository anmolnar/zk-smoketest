# zk-smoketest.py

*Author: "Patrick Hunt":https://home.apache.org/phonebook.html?uid=phunt* (follow me on X:http://x.com/phunt)
*Author: "Andor Molnar":https://home.apache.org/phonebook.html?uid=andor*

## How to validate Apache ZooKeeper releases

- Extract ZooKeeper source artifact to a directory

```bash
tar xf apache-zookeeper-3.8.6.tar.gz ~/tmp/
```

- Set ZooKeeper root directory in `run.sh` and run Docker container

```bash
./docker/run.sh
```

- Build ZooKeeper inside Docker

```bash
cd /zookeeper
mvn clean install -DskipTests -Pfull-build
```

- Build and install the C client

```bash
cd zookeeper-client/zookeeper-client-c/
./configure
make install
ldconfig
```

- Build and install the ZkPython library

```bash
cd ../../zookeeper-contrib/zookeeper-contrib-zkpython/
ant
```

- Run ZooKeeper ensemble on your local machine and start the test inside the Docker container
  (Don't use SSL)

```bash
cd /zk-smoketest-master
python zk-smoketest.py --servers=host.docker.internal:2181
```
