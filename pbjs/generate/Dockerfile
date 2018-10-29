FROM node:10.10.0-alpine as base

WORKDIR /pbjs

ADD src .

RUN \
    npm install && \
	./node_modules/.bin/pbjs || true

FROM node:10.10.0-alpine

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

RUN adduser -S pbjs

COPY --from=base /pbjs /home/pbjs

ADD sh /scripts/

WORKDIR /home/pbjs

USER pbjs

ENTRYPOINT ["/bin/sh", "/scripts/generate.sh"]