FROM openjdk:8-jre-alpine

MAINTAINER Kondaurov Alexander <kondaurov.dev@gmail.com>

WORKDIR /root

RUN apk --no-cache add ca-certificates wget bash && \
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
	apk add glibc-2.28-r0.apk && \
	rm glibc-2.28-r0.apk

ENTRYPOINT ["/bin/bash"]