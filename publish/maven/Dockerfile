FROM kondaurov/sbt-alpine:jdk8sbt1.2.1_compiled

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ADD sh /scripts

ENTRYPOINT ["/bin/sh", "/scripts/publish.sh"]