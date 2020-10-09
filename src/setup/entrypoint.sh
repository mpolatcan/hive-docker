#!/usr/bin/env bash
# $1: message
function __log__() {
    echo "[$(date '+%d/%m/%Y %H:%M:%S')] -> $1"
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

        psql postgresql://${POSTGRES_USER}:$/{POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT:=5432}/${POSTGRES_DB} -a \
             -f ${HIVE_HOME}/scripts/metastore/upgrade/postgres/hive-schema-${HIVE_VERSION_TOKENS[0]}.${HIVE_VERSION_TOKENS[1]}.0.postgres.sql
    fi

    schematool -dbType ${HIVE_METASTORE_DB_TYPE:=derby} -initSchema
}

function main() {
    # Start Hadoop services with loaded configurations
    ./hadoop_entrypoint.sh $1

    # Load Hive configs
    ./hive_config_loader.sh

    configure_hive

    configure_metastore

    if [[ "$1" == "hive" ]]; then
        tail -f /dev/null
    fi
}

main $1
