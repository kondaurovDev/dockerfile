FROM kondaurov/sbt-alpine:jdk8sbt1.2.1_compiled as deps

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ADD sh/deps_template build.sbt

RUN sbt update

FROM kondaurov/sbt-alpine:jdk8sbt1.2.1_compiled

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

COPY --from=deps /root /root

ADD sh /scripts

ENTRYPOINT ["/bin/sh", "/scripts/publish.sh"]