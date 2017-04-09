#!/usr/bin/env bash

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Start all hadoop daemons.  Run this on master node.

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
. "$bin"/hadoop-config.sh
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
# start dfs daemons
"$bin"/start-dfs.sh --config $HADOOP_CONF_DIR
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
# start mapred daemons
"$bin"/start-mapred.sh --config $HADOOP_CONF_DIR
export JAVA_HOME=/usr/lib/jvm/java-8-oracle