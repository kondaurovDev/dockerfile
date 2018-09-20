#### kondaurov/scalapb:generator
It will generate Scala case classes, parsers and serializers for your protocol buffers.
[ScalaPB](https://github.com/scalapb/ScalaPB) is used for that.

###### How it works:

There is a tool [ScalaPBC](https://scalapb.github.io/scalapbc.html), it's JAR that can compile your proto.
This image contains this JAR and all it needs to be running.

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

#### kondaurov/scalapb:publisher

This image will compile your generated classes and will publish them to maven repository.
POM will contain grpc and scalaPB runtime dependencies.