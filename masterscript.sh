#!/bin/bash
# executed at /users/daniar/
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

# setenv JAVA_HOME /usr/lib/jvm/java-8-oracle


# cd /mnt/extra
cd /users/daniar
mkdir hadoop
cd hadoop
git init

git remote add ucare-github-dan https://github.com/daniarherikurniawan/hadoop-0.20.git
git pull ucare-github-dan master --depth=20
git checkout master

ant mvn-install

# bin/hadoop namenode -format

# cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

git checkout conf/core-site.xml
git checkout conf/hadoop-env.sh
git checkout conf/hdfs-site.xml
git checkout conf/mapred-site.xml

git pull ucare-github-dan master
# ./bin/start-all.sh
./bin/start-dfs.sh