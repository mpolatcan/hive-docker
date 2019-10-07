#!/bin/bash

HIVE_VERSIONS=(
    "3.1.2"
    "2.3.6"
    "1.2.2"
)

HADOOP_VERSIONS=(
    "3.2.1"
    "3.1.2"
    "2.9.2"
    "2.8.5"
    "2.7.7"
)

DISTS=(
    "alpine"
    "ubuntu"
)

# $1: DIST
# $2: HIVE_VERSION
# $3: HADOOP_VERSION
function build_image() {
  sudo docker build -q -t mpolatcan/hive:$1-$2-hadoop-$3 --build-arg HIVE_VERSION=$2 --build-arg HADOOP_VERSION=$3 ./$1/
	sudo docker push mpolatcan/hive:$1-$2-hadoop-$3
	sudo docker rmi mpolatcan/hive:$1-$2-hadoop-$3
}

for HIVE_VERSION in ${HIVE_VERSIONS[@]}; do
    for HADOOP_VERSION in ${HADOOP_VERSIONS[@]}; do
        for DIST in ${DISTS[@]}; do
            build_image $DIST $HIVE_VERSION $HADOOP_VERSION
        done
    done
done