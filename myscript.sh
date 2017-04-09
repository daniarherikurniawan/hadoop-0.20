#!/bin/bash
# A Bash script, by Daniar
# chmod 755 myscript.sh
echo Starting the script!

echo 1. Scan SSH fingerprints
echo How many nodes on this experiment?
read maxNodes

counter=0
while [ $counter -lt $maxNodes ]
do
	host=node-$counter.hadoopcluster.cs331-uc.emulab.net
	echo 
	echo node: $host
	echo ...... Scanning ssh fingerprint 
	ssh-keygen -R $host
	ssh-keyscan $host >> ~/.ssh/known_hosts

	if [ $counter -eq 0 ]
	then
		echo ...... Starting masterscript
		ssh $host 'bash -s' < masterscript.sh
	fi
	echo ...... Starting nodescript
	ssh $host 'bash -s' < nodescript.sh

	((counter++))
done

echo All done

echo Finished Dan!
exit