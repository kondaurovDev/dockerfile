#!/usr/bin/env sh

addgroup -g 1000 dev
adduser -u 1000 -G dev -D dev

/bin/sh -c 'while sleep 3600; do :; done'
