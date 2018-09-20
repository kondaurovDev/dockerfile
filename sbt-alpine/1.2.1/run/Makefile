image_name=kondaurov/sbt-aline:jdk8sbt1.2.1

build:
	docker build -t ${image_name} - < Dockerfile

ssh:
	docker run -it --rm ${image_name} /bin/sh