image_name=kondaurov/publish:maven-resource

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it \
	 -v $(PWD):/project \
	 -e src_path=/project/example \
	 --entrypoint=/bin/sh \
	 ${image_name}

run:
	docker run --rm \
	 --net=host \
	 -v $(PWD):/project \
	 -e src_path=/project/example \
	 -e login=admin \
	 -e password=admin123 \
	 -e realm="Sonatype Nexus Repository Manager" \
	 -e repository=http://localhost:8081/repository/maven-snapshots/ \
	 -e project_name=resource \
	 -e org=my_org \
	 -e version=0.0.2 \
	 -e host=localhost \
	 ${image_name}