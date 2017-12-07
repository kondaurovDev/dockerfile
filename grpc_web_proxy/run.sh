#!/usr/bin/env bash

cd /go/bin

./grpcwebproxy --server_tls_cert_file=$HOME/tls/localhost.crt --server_tls_cert_file=$HOME/tls/localhost.key, --backend_addr=${grpc_backend_proxy} --backend_tls_noverify