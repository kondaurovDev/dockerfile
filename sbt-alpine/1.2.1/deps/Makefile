image_name=kondaurov/sbt-aline:jdk8sbt1.2.1_deps

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run -it --rm ${image_name} /bin/sh