FROM openjdk:8-jdk-alpine

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

ENV BUILD_DEPS="gettext"  \
    RUNTIME_DEPS="libintl"

RUN set -x && \
	apk add --no-cache bash wget bc && \
    apk add --update $RUNTIME_DEPS && \
    apk add --virtual build_deps $BUILD_DEPS &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps

ENTRYPOINT /bin/bash