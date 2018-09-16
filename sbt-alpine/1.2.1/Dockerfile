FROM kondaurov/jdk-alpine:jdk8slim

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ENV SBT_VERSION=1.2.1

RUN \
 echo "$SBT_VERSION" && \
 curl -fsL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xfz - -C /usr/local && \
 ln -s /usr/local/sbt/bin/* /usr/local/bin/ && \
 sbt sbtVersion

ENTRYPOINT sbt