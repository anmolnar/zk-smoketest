#!/bin/bash

IMAGE_NAME=andor/zktest
ZOOKEEPER_ROOT=/Users/andor/tmp/apache-zookeeper-3.8.5

echo "Building Docker image: ${IMAGE_NAME}"
docker build --rm=true -t "${IMAGE_NAME}" ./

if [ $? -ne 0 ]; then
    echo "Error: Failed to build ZooKeeper Docker image."
    exit 1
else
    echo "ZooKeeper Docker image built successfully."
fi

docker run -i -t \
  --rm=true \
  -v "$ZOOKEEPER_ROOT":/zookeeper \
  "$IMAGE_NAME"

