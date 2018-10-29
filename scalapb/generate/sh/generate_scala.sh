#!/usr/bin/env sh

set -e

: "${PROTO_DIR?Need to set PROTO_DIR}"
: "${SCALA_OUT?Need to set SCALA_OUT}"
: "${SCALA_OPTS?Need to set SCALA_OPTS (e.g flat_package,java_conversions,grpc)}"

echo "start generating scala code"
echo "input dir: ${PROTO_DIR}"
echo "out dir: ${SCALA_OUT}"

files=`find ${PROTO_DIR} -name "*.proto" | paste -sd " " -`

/bin/bash /home/scalapb/scalapbc/bin/scalapbc -v361 -I=${PROTO_DIR} --scala_out=${SCALA_OPTS}:${SCALA_OUT} ${files}