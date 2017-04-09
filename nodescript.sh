#!/bin/bash
# executed at /users/daniar/
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/mnt/extra/hadoop

# setenv JAVA_HOME /usr/lib/jvm/java-8-oracle

sudo mkdir -p /mnt/extra /tmp/hadoop-ucare
sudo chown -R $USER:cs331-uc /mnt/extra /tmp/hadoop-ucare
sudo chmod -R 775 /mnt/extra /tmp/hadoop-ucare

cd /mnt/extra
mkdir hadoop
cd hadoop
git init

git remote add ucare-github-dan https://github.com/daniarherikurniawan/hadoop-0.20.git
git pull ucare-github-dan master --depth=20
git checkout master

ant mvn-install

bin/hadoop namenode -format

cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

./bin/start-all.sh