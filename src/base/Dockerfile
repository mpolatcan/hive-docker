ARG HADOOP_IMAGE_TAG=""

FROM mpolatcan/hadoop:${HADOOP_IMAGE_TAG}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV HIVE_HOME=${HDUSER_HOME}/hive
ENV PATH=$PATH:$HIVE_HOME/bin \
    HIVE_CONF_DIR=${HIVE_HOME}/conf \
    POSTGRES_HOST="NULL" \
    POSTGRES_USER="NULL" \
    POSTGRES_PASSWORD="NULL" \
    HIVE_SERVICES="NULL"

ADD config_loader.sh ./hive_config_loader.sh

USER root
RUN apt-get update && \
    apt-get -y install postgresql && \
    mkdir -p ${HIVE_HOME} && \
    chown -R hduser:hadoop ${HIVE_HOME} && \
    chmod +x hive_config_loader.sh
