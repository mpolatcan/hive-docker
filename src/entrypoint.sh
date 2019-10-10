#!/usr/bin/env bash
function startHive() {
    hdfs dfs -mkdir -p /tmp
    hdfs dfs -mkdir -p /user/hive/warehouse
    hdfs dfs -chmod g+w /tmp
    hdfs dfs -chmod g+w /user/hive/warehouse
    schematool -dbType derby -initSchema
}

# Start Hadoop services with loaded configurations
./hadoop_entrypoint.sh $1

# Start Hive with embedded Derby database
startHive

if [[ "$1" == "hive" ]]; then
    tail -f /dev/null
fi