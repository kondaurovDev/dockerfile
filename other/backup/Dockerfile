FROM alpine:3.8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN  \
    apk update && \
    apk add curl

ADD sh scripts

ENTRYPOINT ["/bin/sh", "scripts/init.sh"]