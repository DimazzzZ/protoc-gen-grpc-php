# gRPC PHP Generator

Usage example:

```
docker run --rm -v `pwd`:/data \
    dimazzzz/protoc-gen-grpc-php \
    --proto_path=protofiles --php_out=out --grpc_out=out *.proto
```
