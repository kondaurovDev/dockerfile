#!/usr/bin/env sh

set -e

: "${PACKAGE_SCOPE?Need to set PACKAGE_SCOPE}"
: "${REPO_URL?Need to set REPO_URL}"
: "${PACKAGE_NAME?Need to set PACKAGE_NAME}"
: "${PACKAGE_VERSION?Need to set PACKAGE_VERSION}"
: "${REPO_LOGIN?Need to set REPO_LOGIN}"
: "${REPO_PASSWORD?Need to set REPO_PASSWORD}"
: "${PACKAGE_DIR?Need to set PACKAGE_DIR}"

echo "preparing files..."

cat > /scripts/package_part.json <<_EOF_
{
 "name": "@$PACKAGE_SCOPE/$PACKAGE_NAME",
 "version": "$PACKAGE_VERSION",
 "publishConfig": {
	"registry": "$REPO_URL"
 }
}
_EOF_

mkdir /dist

cd ${PACKAGE_DIR}

cp -a ./ /dist

cd /dist

rm .[!.]* || true

origin_package=${PACKAGE_DIR}/package.json

if [ ! -f ${origin_package} ]
 then { echo "creating empty package.json"; echo "!!!"; echo "{}" > ${origin_package}; }
fi

echo "origin package result: "

cat ${origin_package}

cat ${origin_package} \
 /scripts/package_part.json | json --deep-merge > package.json

echo "result package.json: "
cat package.json

echo "logging in..."

/scripts/expect.sh "npm login --registry $REPO_URL --scope=@${PACKAGE_SCOPE} --always-auth" $REPO_LOGIN $REPO_PASSWORD 2>&1

echo "publishing..."

npm publish || { echo "failed publishing.. "; exit 1; }