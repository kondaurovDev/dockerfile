base_image=kondaurov/sbt-alpine:jdk8sbt1.2.1_compiled
image_name=kondaurov/scalapb:project_deps

build:
	docker pull ${base_image} && docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it \
	 --entrypoint=/bin/sh \
	 ${image_name}