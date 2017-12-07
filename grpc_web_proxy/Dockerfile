FROM golang:1.8

RUN go get -u github.com/improbable-eng/grpc-web/go/grpcwebproxy

ADD run.sh /root/run.sh

ENTRYPOINT /root/run.sh