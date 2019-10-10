ARG HADOOP_VERSION=2.9.0
ARG JAVA_VERSION=8

FROM mpolatcan/hadoop:${HADOOP_VERSION}-java${JAVA_VERSION}

ARG HIVE_VERSION=2.3.3
ARG HIVE_DOWNLOAD_LINK="http://www-eu.apache.org/dist/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz"

# TODO Configurations will be added

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV HIVE_HOME "${HDUSER_HOME}/hive"
ENV PATH $PATH:$HIVE_HOME/bin

ADD entrypoint.sh ${HDUSER_HOME}/hive_entrypoint.sh
ADD hive_config_loader.sh ${HDUSER_HOME}

USER root
RUN wget ${HIVE_DOWNLOAD_LINK} && \
    mkdir -p ${HIVE_HOME} && \
    tar -xvzf apache-hive-${HIVE_VERSION}-bin.tar.gz -C ${HDUSER_HOME} && \
    mv ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin/* ${HIVE_HOME} && \
    rm -r ${HDUSER_HOME}/apache-hive-${HIVE_VERSION}-bin && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    chown -R hduser:hadoop ${HIVE_HOME} && \
    chmod -R 777 ${HIVE_HOME} && \
    echo "export HADOOP_HOME=${HADOOP_HOME}" >> ${HIVE_HOME}/conf/hive-env.sh && \
    chmod +x ${HDUSER_HOME}/hive_entrypoint.sh ${HDUSER_HOME}/hive_config_loader.sh && \
    echo "PATH=$PATH:$HIVE_HOME/bin" >> /etc/environment

USER hduser
ENTRYPOINT ["./hive_entrypoint.sh", "hive"]