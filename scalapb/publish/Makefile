image_name=kondaurov/scalapb:publisher

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it \
	 -v $(PWD):/project \
	 -e login=admin \
	 -e password=admin123 \
	 -e realm="Sonatype Nexus Repository Manager" \
	 -e repository=http://localhost:8081/repository/maven-snapshots/ \
	 -e project_name=protos \
	 -e org=my_org \
	 -e version=0.0.1 \
	 -e host=localhost \
	 -e src_path=/project/example_src \
	 --entrypoint=/bin/sh \
	 ${image_name}

run:
	docker run --rm \
	 --net=host \
	 -v $(PWD):/project \
	 -e login=admin \
	 -e password=admin123 \
	 -e realm="Sonatype Nexus Repository Manager" \
	 -e repository=http://localhost:8081/repository/maven-snapshots/ \
	 -e project_name=protos \
	 -e org=my_org \
	 -e version=0.0.1 \
	 -e host=localhost \
	 -e src_path=/project/example_src \
	 ${image_name}