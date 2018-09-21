#### kondaurov/scalapb:generator

[![](https://images.microbadger.com/badges/image/kondaurov/scalapb:generator.svg)](https://microbadger.com/images/kondaurov/scalapb:generator "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/scalapb:generator.svg)](https://microbadger.com/images/kondaurov/scalapb:generator "Get your own version badge on microbadger.com")

It will generate Scala case classes, parsers and serializers for your protocol buffers.
[ScalaPB](https://github.com/scalapb/ScalaPB) is used for that.

    docker pull kondaurov/scalapb:generator && \
	docker run --rm \
	 -v $(PWD):/project \
	 -e PROTO_DIR=/project/example_proto \
	 -e SCALA_OUT=/project/target \
	 -e SCALA_OPTS=flat_package \
	 kondaurov/scalapb:generator

You need to bring your proto directory inside container (-v $(PWD):/project)

Setup several environment variables:
 1. absolute path for folder containing proto files(PROTO_DIR).
 2. absolute path for folder containin generated files(SCALA_OUT).
 3. generator [options](https://scalapb.github.io/sbt-settings.html#additional-options-to-the-generator) for scalaPB

How it works:

There is a tool [ScalaPBC](https://scalapb.github.io/scalapbc.html), it's JAR that can compile your proto.
This image contains this JAR and all it needs to be running.

#### kondaurov/scalapb:publisher

[![](https://images.microbadger.com/badges/image/kondaurov/scalapb:publisher.svg)](https://microbadger.com/images/kondaurov/scalapb:generator "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/scalapb:publisher.svg)](https://microbadger.com/images/kondaurov/scalapb:generator "Get your own version badge on microbadger.com")

This image will compile your generated classes and will publish them to maven repository.
POM will contain grpc and scalaPB runtime dependencies.

    docker pull kondaurov/scalapb:publisher && \
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
	 kondaurov/scalapb:publisher