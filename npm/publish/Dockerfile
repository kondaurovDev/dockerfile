FROM node:10.10.0-alpine

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

RUN set -x && \
	apk add expect

RUN npm install -g json

ADD sh /scripts/

WORKDIR /pbjs

ENTRYPOINT ["/bin/sh", "/scripts/publish.sh"]