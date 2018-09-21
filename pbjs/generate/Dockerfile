FROM node:10.10.0-alpine

WORKDIR /pbjs

ADD src .

RUN \
    npm install && \
	./node_modules/.bin/pbjs || true

ADD sh /scripts/

ENTRYPOINT ["/bin/sh", "/scripts/generate.sh"]