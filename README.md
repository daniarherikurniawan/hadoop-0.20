For the latest information about Hadoop, please visit our website at:

   http://hadoop.apache.org/core/

and our wiki, at:

   http://wiki.apache.org/hadoop/

This distribution includes cryptographic software.  The country in 
which you currently reside may have restrictions on the import, 
possession, use, and/or re-export to another country, of 
encryption software.  BEFORE using any encryption software, please 
check your country's laws, regulations and policies concerning the
import, possession, or use, and re-export of encryption software, to 
see if this is permitted.  See <http://www.wassenaar.org/> for more
information.

The U.S. Government Department of Commerce, Bureau of Industry and
Security (BIS), has classified this software as Export Commodity 
Control Number (ECCN) 5D002.C.1, which includes information security
software using or performing cryptographic functions with asymmetric
algorithms.  The form and manner of this Apache Software Foundation
distribution makes it eligible for export under the License Exception
ENC Technology Software Unrestricted (TSU) exception (see the BIS 
Export Administration Regulations, Section 740.13) for both object 
code and source code.

The following provides more details on the included cryptographic
software:
  Hadoop Core uses the SSL libraries from the Jetty project written 
by mortbay.org.


===================== DANIAR ======================================
clone : 

git init
git remote add -t branch-0.20 -f origin https://github.com/ucare-uchicago/hadoop.git
git checkout branch-0.20


https://hadoop.apache.org/docs/r0.23.11/hadoop-project-dist/hadoop-common/SingleCluster.html
 - install mvn 
 - instruction
 	$ mvn clean install -DskipTests
	$ cd hadoop-mapreduce-project
	$ mvn clean install assembly:assembly -Pnative
[failed]

http://www.michael-noll.com/blog/2011/04/14/building-an-hadoop-0-20-x-version-for-hbase-0-90-2/
- install java set java home
- install maven
- install ant
	# Run the build process
	$ ant mvn-install

	# Optional: run the full test suite or just the core test suite
	$ ant test
	$ ant test-core

http://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/

set env variable at ~/.bash_profile
sudo chown -R daniar hadoop-20

$ sudo mkdir -p /app/hadoop/tmp
$ sudo chown daniar /app/hadoop/tmp
# ...and if you want to tighten up security, chmod from 755 to 750...
$ sudo chmod 750 /app/hadoop/tmp

source .bash_profile

bin/hadoop dfs -copyFromLocal gutenberg /gutenberg

================= MAPREDUCE JOB ===================
javac -classpath ../build/hadoop-core-0.20.3-SNAPSHOT.jar  WordCount.java
jar -cvf WordCount.jar *.class

just this : bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar wordcount /gutenberg /gutenberg-output

===================== NODE ACCESS =====================
node-0.hadoopcluster-dan.ucare.emulab.net 
node-1.hadoopcluster-dan.ucare.emulab.net 
node-2.hadoopcluster-dan.ucare.emulab.net 
node-3.hadoopcluster-dan.ucare.emulab.net 




==================== SSH =========================
sudo vim /etc/ssh/ssh_config
Host 155.98.39.*
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null


===================== RUN ======================
./myscript.sh

cd /mnt/extra/hadoop/
ant mvn-install
sudo apt-get install vim
vim $HOME/.bashrc
```
	# Set Hadoop-related environment variables
	export HADOOP_HOME=/users/daniar/hadoop

	# Set JAVA_HOME (we will also configure JAVA_HOME directly for Hadoop later on)
	export JAVA_HOME=/usr/lib/jvm/java-8-oracle

	# Some convenient aliases and functions for running Hadoop-related commands
	unalias fs &> /dev/null
	alias fs="hadoop fs"
	unalias hls &> /dev/null
	alias hls="fs -ls"

	# Add Hadoop bin/ directory to PATH
	export PATH=$PATH:$HADOOP_HOME/bin

JAVA_HOME="/usr/lib/jvm/java-8-oracle"
source /etc/environment

bin/hadoop namenode -format
cd /mnt/extra/hadoop/
./bin/start-all.sh


jps is a god

git pull ucare-github-dan master

git checkout conf/core-site.xml
git checkout conf/hdfs-site.xml
git checkout conf/mapred-site.xml

./bin/stop-all.sh


git checkout runbench.sh
git pull ucare-github-dan master
vim runbench.sh


ssh users.emulab.net
ssh node-0.HadoopCluster.cs331-uc.emulab.net

ssh-keyscan node-12.hadoopcluster.cs331-uc.emulab.net >> ~/.ssh/known_hosts

sudo vi /etc/bash.bashrc

JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre/bin/java
export JAVA_HOME
PATH=$PATH:/usr/lib/jvm/java-8-oracle/jre/bin
export PATH

bash
host=node-0.hadoopcluster.cs331-uc.emulab.net
ssh-keygen -R $host
	ssh-keyscan $host >> ~/.ssh/known_hosts

ssh-copy-id -i $HOME/.ssh/id_rsa.pub $host

TEST MAPRED
bash
bin/hadoop jar build/hadoop-examples-0.20.3-SNAPSHOT.jar  wordcount  /users/daniar/hadoop/gutenberg /users/daniar/gutenberg-output



