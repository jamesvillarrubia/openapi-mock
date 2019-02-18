#!/bin/bash

image_name="swaggermock/swagger-mock"

if [ "$TRAVIS_TAG" != "" ]; then
    image_name="$image_name:$TRAVIS_TAG"
fi

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
echo "Deploying image $image_name to DockerHub..."

docker push "$image_name"
if [ "${?}" != "0" ]; then
    exit 1;
fi