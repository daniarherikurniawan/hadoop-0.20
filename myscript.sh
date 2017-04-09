#!/bin/bash
# A Bash script, by Daniar
# chmod 755 myscript.sh
echo Starting the script!

# echo 1. Scan SSH fingerprints
# echo How many nodes on this experiment?
# read maxNodes


# counter=0
# while [ $counter -lt $maxNodes ]
# do
# 	host=node-$counter.hadoopcluster.cs331-uc.emulab.net
# 	echo 
# 	echo Scanning ssh fingerprint of $host
# 	ssh-keygen -R $host
# 	ssh-keyscan $host >> ~/.ssh/known_hosts
# 	((counter++))
# done

# echo All done

ssh node-12.hadoopcluster.cs331-uc.emulab.net 'bash -s' < nodescript.sh
echo Finished Dan!
exit