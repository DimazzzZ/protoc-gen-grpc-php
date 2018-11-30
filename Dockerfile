FROM php:cli-alpine

ENV GRPC_VERSION=1.15.0

RUN mkdir -p /data && \
    apk update && \
    apk add protobuf git autoconf automake libtool curl make g++ unzip && \
    mkdir -p /opt && cd /opt && git clone --depth=1 -b v${GRPC_VERSION} https://github.com/grpc/grpc && \
    cd grpc && git submodule update --init && make grpc_php_plugin

WORKDIR /data

ENTRYPOINT ["protoc", "--plugin=protoc-gen-grpc=/opt/grpc/bins/opt/grpc_php_plugin"]
