FROM php:cli-alpine

RUN mkdir -p /data && \
    apk update && \
    apk add composer protobuf && \
    composer global require lvht/grpc

WORKDIR /data

ENTRYPOINT ["protoc", "--plugin=protoc-gen-grpc-php=/root/.composer/vendor/bin/protoc-gen-grpc-php"]
