#!/usr/bin/env bash
function start_hive() {
    hdfs dfs -mkdir -p /tmp
    hdfs dfs -mkdir -p /user/hive/warehouse
    hdfs dfs -chmod g+w /tmp
    hdfs dfs -chmod g+w /user/hive/warehouse
    schematool -dbType derby -initSchema
}

# Start Hadoop services with loaded configurations
./hadoop_entrypoint.sh $1

# Load Hive configs
./hive_config_loader.sh

# Start Hive with embedded Derby database
start_hive

if [[ "$1" == "hive" ]]; then
    tail -f /dev/null
fi