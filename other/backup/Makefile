image_name=kondaurov/other:backup

build:
	docker build -t ${image_name} .

ssh:
	docker run --rm -it --entrypoint=/bin/sh ${image_name}

run_local:
	docker run --rm \
		--net=host \
		-v $(PWD):/pwd \
		-e MODE=local \
		-e DOCKERFILE_PATH=/pwd/example/Dockerfile \
		-e BACKUP_DIR=/pwd/example/sub \
		-e RESULT_DIR=/pwd/target \
		-e FILENAME=test \
		${image_name}

run_upload:
	docker run --rm \
		--net=host \
		-v $(PWD):/pwd \
		-e DOCKERFILE_PATH=/pwd/example/Dockerfile \
		-e BACKUP_DIR=/pwd/example/sub \
		-e CRED=admin:admin123 \
		-e FILENAME=musuperfile \
		-e URL=http://localhost:8081/repository/raw-hosted-snapshots \
		-e FILENAME=test \
		${image_name}