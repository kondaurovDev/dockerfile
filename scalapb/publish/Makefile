image_name=kondaurov/scalapb:publisher

build:
	docker build -t ${image_name} -f Dockerfile .

run:
	docker run --rm \
	 --net=host \
	 -v $(PWD):/project \
	 -e login=admin \
	 -e password=admin123 \
	 -e realm="Sonatype Nexus Repository Manager" \
	 -e repository=http://localhost:8081/repository/maven-snapshots/ \
	 -e project_name=protos \
	 -e org=data_clean \
	 -e version=0.0.125-SNAPSHOT \
	 -e host=localhost \
	 -e src_path=/project/example_src \
	 ${image_name}