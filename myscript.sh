#!/bin/bash
# A Bash script, by Daniar
# chmod 755 myscript.sh
echo Starting the script!

echo How many nodes on this experiment?
read maxNodes

projURI=hadoopcluster.cs331-uc.emulab.net

counter=0
while [ $counter -lt $maxNodes ]
do
	host=node-$counter.$projURI
	echo 
	echo node: $host
	echo ...... START Scanning ssh fingerprint 
	ssh-keygen -R $host
	ssh-keyscan $host >> ~/.ssh/known_hosts
	echo ...... END Scanning ssh fingerprint 

	if [ $counter -eq 0 ]
	then
		echo ...... Starting masterscript
		ssh $host 'bash -s' < masterscript.sh $maxNodes
	else
		echo ...... Starting slavescript
		ssh $host 'bash -s' < slavescript.sh $maxNodes
	fi

	echo ...... Finished running nodescript

	((counter++))
done

echo ...... Starting MAP REDUCE Test
host=node-0.$projURI
ssh $host 'bash -s' < mapredscript.sh 
echo open:
echo 	$host:50070 
echo 	$host:50030 
echo All done

exit