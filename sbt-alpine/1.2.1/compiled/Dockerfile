FROM kondaurov/sbt-alpine:jdk8sbt1.2.1_deps

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ADD Simple.scala /root/project/src/main/scala/

RUN sbt 'set crossScalaVersions := Seq("2.11.8", "2.12.6")' '+compile'