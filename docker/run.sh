#!/bin/bash

set -e -x -u

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

IMAGE_NAME=andor/zktest
ZOOKEEPER_ROOT=/Users/andor/tmp/apache-zookeeper-3.9.6

pushd "$SCRIPT_DIR"

echo "Building Docker image: ${IMAGE_NAME}"
docker build --rm=true -t "${IMAGE_NAME}" ./

popd

if [ $? -ne 0 ]; then
    echo "Error: Failed to build ZooKeeper Docker image."
    exit 1
else
    echo "ZooKeeper Docker image built successfully."
fi

docker run -i -t \
  --rm=true \
  -v ~/.m2:/root/.m2 \
  -v "$ZOOKEEPER_ROOT":/zookeeper \
  "$IMAGE_NAME"

