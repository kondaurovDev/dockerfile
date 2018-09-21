FROM kondaurov/jdk-alpine:8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ENV SBT_VERSION=1.2.1
ENV PATH=${PATH}:/usr/local/sbt/bin

WORKDIR /root

RUN \

 wget https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz && \
 tar -xzf sbt-${SBT_VERSION}.tgz && mv sbt /usr/local && rm sbt-${SBT_VERSION}.tgz  && \
 sbt sbtVersion

ENTRYPOINT ["sbt"]