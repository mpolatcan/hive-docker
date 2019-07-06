#!/usr/bin/env bash
function execCmd() { su - hduser -s /bin/bash -c "$1"; }

function startHive() {
    execCmd "${HADOOP_HOME}/bin/hadoop fs -mkdir -p /tmp"
    execCmd "${HADOOP_HOME}/bin/hadoop fs -mkdir -p /user/hive/warehouse"
    execCmd "${HADOOP_HOME}/bin/hadoop fs -chmod g+w /tmp"
    execCmd "${HADOOP_HOME}/bin/hadoop fs -chmod g+w /user/hive/warehouse"
    execCmd "${HIVE_HOME}/bin/schematool -dbType derby -initSchema"
}

# Start Hadoop services with loaded configurations
./hadoop_entrypoint.sh

# Start Hive with embedded Derby database
startHive