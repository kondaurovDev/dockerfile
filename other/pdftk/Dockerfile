FROM alpine:3.8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN  \
    apk update && \
    apk upgrade && \
    apk add pdftk

RUN \
    addgroup -g 1000 bill && \
    adduser -u 1000 -G bill -D bill

USER bill

WORKDIR /home/bill

ENTRYPOINT ["pdftk"]