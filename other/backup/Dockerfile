FROM alpine:3.8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN  \
    apk update && \
    apk add curl

RUN \
    addgroup -g 1000 bill && \
    adduser -u 1000 -G bill -D bill

USER bill

WORKDIR /home/bill

ADD --chown=bill:bill sh sh

ENTRYPOINT ["/bin/sh", "sh/init.sh"]