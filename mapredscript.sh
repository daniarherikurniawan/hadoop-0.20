#!/bin/bash
# A Bash script, by Daniar

# Set env variables
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

cd hadoop/
# git pull ucare-github-dan master

fileName=gutenbergX
destination=/$fileName0
echo ..... Saving $fileName files to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination
echo       Folder $fileName is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination0
echo       Folder $fileName0 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination1
echo       Folder $fileName1 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination2
echo       Folder $fileName2 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination3
echo       Folder $fileName3 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination4
echo       Folder $fileName4 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination5
echo       Folder $fileName5 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination6
echo       Folder $fileName6 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination7
echo       Folder $fileName7 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination8
echo       Folder $fileName8 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination9
echo       Folder $fileName9 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination10
echo       Folder $fileName10 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination11
echo       Folder $fileName11 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination12
echo       Folder $fileName12 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination13
echo       Folder $fileName13 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination14
echo       Folder $fileName14 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination15
echo       Folder $fileName15 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination16
echo       Folder $fileName16 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination17
echo       Folder $fileName17 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName $destination18
echo ..... Finish saving $fileName files to HDFS
echo  
echo ..... Start MapRed Job
# bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar wordcount $destination $destination-output
echo ..... Finish MapRed Job
echo  
echo HDFS directory
bin/hadoop dfs -ls /