FROM kondaurov/jdk-alpine:jdk8slim

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ENV SBT_VERSION=1.2.1

RUN \
 wget https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz && \
 tar -xzf sbt-${SBT_VERSION}.tgz && \
 ln -s /root/sbt/bin/* /usr/local/bin/

ENTRYPOINT ["sbt"]