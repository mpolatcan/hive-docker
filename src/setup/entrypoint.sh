#!/usr/bin/env bash
# $1: message
function __log__() {
    echo "[$(date '+%d/%m/%Y %H:%M:%S')] -> $1"
}

function health_checker() {
    host=$2
    port=$3

    __log__ "Hadoop $1 healthcheck started (host: \"$host\", port: \"$port\")"

    nc -z $host $port

    until [[ $? -eq 0 ]]; do
        __log__ "Waiting Hadoop $1 is ready (host: \"$host\", port: \"$port\")"
        sleep $HADOOP_HEALTHCHECK_INTERVAL_IN_SECS
        nc -z $host $port
    done

    __log__ "Hadoop $1 is ready (host: \"$host\", port: \"$port\") ✔"
}

function configure_hive() {
    hdfs dfs -mkdir -p /tmp
    hdfs dfs -mkdir -p /user/hive/warehouse
    hdfs dfs -chmod g+w /tmp
    hdfs dfs -chmod g+w /user/hive/warehouse
}

function configure_metastore() {
    if [[ ${HIVE_METASTORE_DB_TYPE} == "postgres" ]]; then
        IFS='.' read -r -a HIVE_VERSION_TOKENS <<< "$HIVE_VERSION"
        __log__ "Hive version is ${HIVE_VERSION_TOKENS[0]}.${HIVE_VERSION_TOKENS[1]}.0"

        __log__ "Creating database ${POSTGRES_DB}..."
        psql postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT:=5432} -c "CREATE DATABASE "${POSTGRES_DB}";"
    fi

    schematool -dbType ${HIVE_METASTORE_DB_TYPE:=derby} -initSchema
}

function main() {
    # Start Hadoop services with loaded configurations
    ./hadoop_entrypoint.sh $1

    # Load Hive configs
    ./hive_config_loader.sh

    # Check HDFS is ready
    health_checker "namenode" "${DFS_NAMENODE_HOSTNAME}" "${DFS_NAMENODE_HTTP_PORT:=9870}"

    configure_hive

    for service in ${HIVE_SERVICES[@]}; do
        hive --service $service &
    done

    if [[ "$1" == "hive" ]]; then
        tail -f /dev/null
    fi
}

main $1
