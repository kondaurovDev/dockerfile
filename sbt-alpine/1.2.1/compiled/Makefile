image_name=kondaurov/sbt-aline:jdk8sbt1.2.1_compiled

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it --entrypoint=/bin/sh --rm ${image_name}