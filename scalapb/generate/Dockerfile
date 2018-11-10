FROM kondaurov/jre-alpine:8 as binary

WORKDIR /root

ENV scalapbVersion=0.8.2

RUN \
 apk add unzip && \
 wget https://github.com/scalapb/ScalaPB/releases/download/v${scalapbVersion}/scalapbc-${scalapbVersion}.zip

RUN \
 unzip scalapbc-${scalapbVersion}.zip && mv scalapbc-${scalapbVersion} scalapbc

FROM kondaurov/jre-alpine:8

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

RUN \
    addgroup -g 1000 bill && \
    adduser -u 1000 -G bill -D bill

COPY --from=binary --chown=1000:1000 /root/scalapbc /home/scalapb/scalapbc

RUN \
    /bin/bash /home/scalapb/scalapbc/bin/scalapbc -v361 || true

WORKDIR /home/bill

USER bill

ADD --chown=bill:bill sh scripts

ENTRYPOINT ["/bin/sh", "/home/bill/scripts/generate_scala.sh"]