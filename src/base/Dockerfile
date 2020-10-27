ARG HADOOP_VERSION=3.2.1
ARG JAVA_VERSION=8

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV HIVE_HOME=${HDUSER_HOME}/hive
ENV PATH=$PATH:$HIVE_HOME/bin \
    HIVE_CONF_DIR=${HIVE_HOME}/conf \
    POSTGRES_HOST="NULL" \
    POSTGRES_USER="NULL" \
    POSTGRES_PASSWORD="NULL" \
    HIVE_SERVICES="NULL"

ADD entrypoint.sh ${HDUSER_HOME}/hive_entrypoint.sh
ADD config_loader.sh ${HDUSER_HOME}/hive_config_loader.sh

USER root
RUN apt-get update && \
    apt-get -y install postgresql && \
    mkdir -p ${HIVE_HOME} && \
    chown -R hduser:hadoop ${HIVE_HOME} && \
    chmod +x ${HDUSER_HOME}/hive_entrypoint.sh ${HDUSER_HOME}/hive_config_loader.sh
