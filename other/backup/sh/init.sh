#!/usr/bin/env sh

set -e

: "${BACKUP_DIR?Need to set BACKUP_DIR}"
: "${DOCKERFILE_PATH?Need to set DOCKERFILE_PATH}"
: "${FILENAME?Need to set FILENAME}"

mkdir backup

cp -rf $BACKUP_DIR backup
cp $DOCKERFILE_PATH backup

tar czf backup.tgz -C backup .

timestamp=`date +%Y%m%d%H%M%S`
name=$FILENAME-${timestamp}.tgz

if [ $MODE == "local" ]
then
    : "${RESULT_DIR?Need to set RESULT_DIR}"
    mv backup.tgz $RESULT_DIR/$name
else
    : "${CRED?Need to set CRED, eg. admin:admin123}"
    : "${URL?Need to set URL, eg. http://localhost:8081/repository/raw-hosted-snapshots/musuperfile.tgz}"
    timestamp=`date +%Y%m%d%H%M%S`
    curl -v -u $CRED --upload-file backup.tgz $URL/$name
fi


