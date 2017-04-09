#!/bin/bash

sudo mkdir -p /mnt/extra /tmp/hadoop-ucare
sudo chown -R $USER:ucare /mnt/extra /tmp/hadoop-ucare
sudo chmod -R 775 /mnt/extra /tmp/hadoop-ucare

cd /mnt/extra
mkdir hadoop
cd hadoop
git init

git remote add ucare-github-dan https://github.com/daniarherikurniawan/hadoop-0.20.git
git pull ucare-github-dan master --depth=20
git checkout master

# run command below for initial compilation
# mvn package install -Pdist -DskipTests