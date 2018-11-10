#!/usr/bin/env sh

set -e

: "${BACKUP_DIR?Need to set BACKUP_DIR}"
: "${DOCKERFILE_PATH?Need to set DOCKERFILE_PATH}"
: "${FILENAME?Need to set FILENAME}"


mkdir -p backup/context

echo "copying backup dir: $BACKUP_DIR"
cp -rf $BACKUP_DIR backup/context
echo "copying Dockerfile: $BACKUP_DIR"
cp $DOCKERFILE_PATH backup

echo "creating tgz file..."
tar czf backup.tgz -C backup .
chown 1000:1000 backup.tgz

timestamp=`date +%Y%m%d%H%M%S`
name=$FILENAME-${timestamp}.tgz

echo "final name is: $name"

if [ $MODE == "local" ]
then
    : "${RESULT_DIR?Need to set RESULT_DIR}"
    echo "save locally"
    mv backup.tgz $RESULT_DIR/$name
else
    : "${CRED?Need to set CRED, eg. admin:admin123}"
    : "${URL?Need to set URL, eg. http://localhost:8081/repository/raw-hosted-snapshots/musuperfile.tgz}"
    echo "uploading file"
    timestamp=`date +%Y%m%d%H%M%S`
    curl -v -u $CRED --upload-file backup.tgz $URL/$name
fi

echo "done"


