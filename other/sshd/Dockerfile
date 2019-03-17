FROM alpine:3.9.2

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN apk update && \
    apk add openssh

ENTRYPOINT [ "/bin/sh" ]
