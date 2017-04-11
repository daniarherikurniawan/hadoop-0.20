#!/bin/bash
# A Bash script, by Daniar

# Set env variables
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

cd hadoop/
git pull ucare-github-dan master

fileName=gutenbergX

echo ..... Saving $fileName files to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName
echo       Folder $fileName is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName0
echo       Folder $fileName0 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName1
echo       Folder $fileName1 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName2
echo       Folder $fileName2 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName3
echo       Folder $fileName3 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName4
echo       Folder $fileName4 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName5
echo       Folder $fileName5 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName6
echo       Folder $fileName6 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName7
echo       Folder $fileName7 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName8
echo       Folder $fileName8 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName9
echo       Folder $fileName9 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName10
echo       Folder $fileName10 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName11
echo       Folder $fileName11 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName12
echo       Folder $fileName12 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName13
echo       Folder $fileName13 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName14
echo       Folder $fileName14 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName15
echo       Folder $fileName15 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName16
echo       Folder $fileName16 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName17
echo       Folder $fileName17 is copied to HDFS
bin/hadoop dfs -copyFromLocal $fileName /$fileName18
echo ..... Finish saving $fileName files to HDFS
echo  
echo ..... Start MapRed Job
# bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar wordcount /$fileName /$fileName-output
echo ..... Finish MapRed Job
echo  
echo HDFS directory
bin/hadoop dfs -ls /