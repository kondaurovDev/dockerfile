FROM kondaurov/jre-alpine:8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

ENV scalapbVersion=0.8.0-RC2

RUN \
 apk add unzip && \
 wget https://github.com/scalapb/ScalaPB/releases/download/v${scalapbVersion}/scalapbc-${scalapbVersion}.zip && \
 unzip scalapbc-${scalapbVersion}.zip && mv scalapbc-${scalapbVersion} scalapbc && \
 /bin/bash /root/scalapbc/bin/scalapbc || true