#!/bin/bash
# A Bash script, by Daniar

# Set env variables
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

cd hadoop/

echo ..... Saving gutenberg files to HDFS
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg0
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg1
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg2
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg3
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg4
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg5
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg6
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg7
bin/hadoop dfs -copyFromLocal gutenberg /gutenberg8
echo ..... Finish saving gutenberg files to HDFS
echo  
echo ..... Start MapRed Job
bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar wordcount /gutenberg /gutenberg-output
echo ..... Finish MapRed Job
echo  
echo HDFS directory
bin/hadoop dfs -ls /