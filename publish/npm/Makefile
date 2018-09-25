base_image=node:10.10.0-alpine
image_name=kondaurov/publish:npm

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it \
	 --net=host \
	 -v $(PWD):/project \
     -e PACKAGE_NAME=my_name \
     -e PACKAGE_SCOPE=my_scope \
     -e PACKAGE_VERSION=1.0.0 \
     -e REPO_LOGIN=admin \
     -e REPO_PASSWORD=admin123 \
     -e REPO_URL=http://localhost:8081/repository/npm-hosted/ \
     -e PACKAGE_DIR=/project/example_files \
	 --entrypoint=/bin/sh ${image_name}

run:
	docker run --rm \
	--net=host \
	-v $(PWD):/project \
    -e PACKAGE_NAME=my_name \
	-e PACKAGE_SCOPE=my_scope \
	-e PACKAGE_VERSION=1.0.0 \
	-e REPO_LOGIN=admin \
	-e REPO_PASSWORD=admin123 \
	-e REPO_URL=http://localhost:8081/repository/npm-hosted/ \
	-e PACKAGE_DIR=/project/example_files \
	${image_name}