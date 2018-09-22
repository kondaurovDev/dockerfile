#!/usr/bin/env sh

set -e

: "${PACKAGE_SCOPE?Need to set PACKAGE_SCOPE}"
: "${REPO_URL?Need to set REPO_URL}"
: "${PACKAGE_NAME?Need to set PACKAGE_NAME}"
: "${PACKAGE_VERSION?Need to set PACKAGE_VERSION}"
: "${REPO_LOGIN?Need to set REPO_LOGIN}"
: "${REPO_PASSWORD?Need to set REPO_PASSWORD}"
: "${PACKAGE_DIR?Need to set PACKAGE_DIR}"

cd ${PACKAGE_DIR}

echo "logging in..."

/scripts/expect.sh "npm login --registry $REPO_URL --scope=@${PACKAGE_SCOPE} --always-auth" $REPO_LOGIN $REPO_PASSWORD >/dev/null 2>&1

mkdir /dist

cp -a ./ /dist

cd /dist

cat > package.json <<_EOF_
{
 "name": "@$PACKAGE_SCOPE/$PACKAGE_NAME",
 "version": "$PACKAGE_VERSION",
 "main": "all.js",
 "types": "all.d.ts",
 "publishConfig": {
	"registry": "$REPO_URL"
 },
 "dependencies": {
  "protobufjs": "~6.8.8"
 }
}
_EOF_

echo "publishing..."

npm publish || { echo "failed publishing.. "; exit 1; }