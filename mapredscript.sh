#!/bin/bash
# A Bash script, by Daniar

# Set env variables
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

cd hadoop/

echo ..... Saving gutenberg files to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg
echo       Folder gutenberg0 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg0
echo       Folder gutenberg1 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg1
echo       Folder gutenberg2 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg2
echo       Folder gutenberg3 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg3
echo       Folder gutenberg4 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg4
echo       Folder gutenberg5 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg5
echo       Folder gutenberg6 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg6
echo       Folder gutenberg7 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg7
echo       Folder gutenberg8 is copied to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg8
echo ..... Finish saving gutenberg files to HDFS
echo  
echo ..... Start MapRed Job
# bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar wordcount /gutenberg /gutenberg-output
echo ..... Finish MapRed Job
echo  
echo HDFS directory
bin/hadoop dfs -ls /