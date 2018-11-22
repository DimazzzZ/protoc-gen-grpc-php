# gRPC PHP Generator

Usage example:

```
docker run --rm -v `pwd`:/data \
    dimazzzz/protoc-gen-grpc-php \
 	--php_out=./outputdir \
 	--grpc-php_out=composer_name=myapp/proto:outputdir app.proto
```
