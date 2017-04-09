export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/
export HADOOP_HOME=/users/daniar/hadoop

sudo mkdir -p /mnt/extra /tmp/hadoop-ucare
sudo chown -R $USER:cs331-uc /mnt/extra /tmp/hadoop-ucare
sudo chmod -R 775 /mnt/extra /tmp/hadoop-ucare


counter=0
while [ $counter -lt $maxNodes ]
do
	host=node-$counter.hadoopcluster.cs331-uc.emulab.net
	ssh-keygen -R $host
	ssh-keyscan $host >> ~/.ssh/known_hosts

	((counter++))
done

cd /users/daniar/hadoop

bin/hadoop namenode -format

# cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys

./bin/start-mapred.sh
