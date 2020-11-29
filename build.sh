#!/bin/bash
# build prerequisite images

docker build \
  --build-arg BASE_IMAGE_TAG="15-slim" \
  --build-arg SBT_VERSION="1.3.7" \
  --build-arg SCALA_VERSION="2.13.1" \
  -t lichess/scala-sbt:15-slim \
  -f dockerfiles/Dockerfile.scala-sbt .

docker build \
  -t lichess/nginx-node-stage:1.0 \
  --target node \
  -f dockerfiles/Dockerfile.nginx .
