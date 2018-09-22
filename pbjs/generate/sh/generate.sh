#!/usr/bin/env sh

set -e

: "${PROTO_DIR?Need to set PROTO_DIR}"
: "${TARGET_DIR?Need to set TARGET_DIR}"

files=`find ${PROTO_DIR} -name "*.proto" | paste -sd " " -`

./node_modules/.bin/pbjs -t static-module -w commonjs -p ${PROTO_DIR} -o ${TARGET_DIR}/all.js ${files}
./node_modules/.bin/pbts -o ${TARGET_DIR}/all.d.ts ${TARGET_DIR}/all.js