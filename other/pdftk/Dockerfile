FROM alpine:3.8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN  \
    apk update && \
    apk upgrade && \
    apk add pdftk

RUN  \
    adduser -S pdftk

USER pdftk

WORKDIR /home/pdftk

ENTRYPOINT ["pdftk"]