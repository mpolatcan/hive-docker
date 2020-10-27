ARG HADOOP_VERSION=3.2.1
ARG JAVA_VERSION=8

FROM mpolatcan/hive:base-hadoop-${HADOOP_VERSION}-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG HIVE_VERSION=2.3.6
ARG POSTGRESQL_DRIVER_VERSION="42.2.16"
ARG HIVE_DOWNLOAD_LINK="http://downloads.apache.org/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz"
ARG POSTGRESQL_DRIVER_DOWNLOAD_LINK="https://jdbc.postgresql.org/download/postgresql-${POSTGRESQL_DRIVER_VERSION}.jar"

ENV HIVE_VERSION=$HIVE_VERSION

RUN wget ${HIVE_DOWNLOAD_LINK} ${POSTGRESQL_DRIVER_DOWNLOAD_LINK} && \
    tar -xvzf apache-hive-${HIVE_VERSION}-bin.tar.gz -C ${HDUSER_HOME} && \
    mv ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin/* ${HIVE_HOME} && \
    mv postgresql-${POSTGRESQL_DRIVER_VERSION}.jar ${HIVE_HOME}/lib && \
    rm -r ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    rm ${HIVE_HOME}/lib/guava-*.jar && \
    cp ${HADOOP_HOME}/share/hadoop/common/lib/guava-*.jar ${HIVE_HOME}/lib && \
    chown -R hduser:hadoop ${HIVE_HOME}

USER hduser
ENTRYPOINT ["./hive_entrypoint.sh", "hive"]