ARG HADOOP_VERSION=3.2.1
ARG JAVA_VERSION=8

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG HIVE_VERSION=2.3.6
ARG HIVE_DOWNLOAD_LINK="http://downloads.apache.org/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz"
ARG POSTGRESQL_DRIVER_DOWNLOAD_LINK="https://jdbc.postgresql.org/download/postgresql-42.2.16.jar"

ENV HIVE_HOME=${HDUSER_HOME}/hive
ENV PATH=$PATH:$HIVE_HOME/bin \
    HIVE_CONF_DIR=${HIVE_HOME}/conf \
    HIVE_VERSION=$HIVE_VERSION \
    POSTGRES_HOST="NULL" \
    POSTGRES_USER="NULL" \
    POSTGRES_PASSWORD="NULL" \
    HIVE_SERVICES="NULL"

ADD entrypoint.sh ${HDUSER_HOME}/hive_entrypoint.sh
ADD config_loader.sh ${HDUSER_HOME}/hive_config_loader.sh

USER root
RUN apt-get update && \
    apt-get -y install postgresql && \
    wget ${HIVE_DOWNLOAD_LINK} ${POSTGRESQL_DRIVER_DOWNLOAD_LINK} && \
    mkdir -p ${HIVE_HOME} && \
    tar -xvzf apache-hive-${HIVE_VERSION}-bin.tar.gz -C ${HDUSER_HOME} && \
    mv ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin/* ${HIVE_HOME} && \
    mv postgresql-42.2.16.jar ${HIVE_HOME}/lib && \
    rm -r ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    chown -R hduser:hadoop ${HIVE_HOME} && \
    chmod +x ${HDUSER_HOME}/hive_entrypoint.sh ${HDUSER_HOME}/hive_config_loader.sh

USER hduser
ENTRYPOINT ["./hive_entrypoint.sh", "hive"]