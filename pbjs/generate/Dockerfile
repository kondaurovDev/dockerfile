FROM node:10.10.0-alpine as base

WORKDIR /pbjs

ADD src .

RUN \
    npm install && \
	./node_modules/.bin/pbjs || true

FROM node:10.10.0-alpine

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

USER node

WORKDIR /home/node

COPY --from=base /pbjs /home/node

ADD --chown=node:node sh /scripts/

ENTRYPOINT ["/bin/sh", "/scripts/generate.sh"]