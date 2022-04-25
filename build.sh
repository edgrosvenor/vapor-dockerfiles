#!/bin/bash

PHP_VERSION=$1
PUBLISH=$2

docker build -f ${PWD}/${PHP_VERSION}.Dockerfile -t vapor-${PHP_VERSION}:latest .

 docker tag vapor-${PHP_VERSION}:latest edgrosvenor/laravel-vapor:${PHP_VERSION}

if [ -n "$PUBLISH" ]; then
  docker push edgrosvenor/laravel-vapor:${PHP_VERSION}
fi
