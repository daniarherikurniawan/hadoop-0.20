
cd hadoop/logs/

echo "" > hadoop-daniar-namenode-node-0.hadoopcluster.cs331-uc.emulab.net.log

project=hadoopcluster.cs331-uc.emulab.net
host=http://node-0.$project:50070

counter=1
while [ $counter -lt $1 ]
do
	echo "" > $host/logs/hadoop-daniar-datanode-node-$counter.$project.log &

	((counter++))
done

wait
echo All subshells erasing logs contents are finished