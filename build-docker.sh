#!/usr/bin/env sh

# Get tag from commit sha1
TAG=${CI_BUILD_REF_SLUG}-${CI_BUILD_REF:0:8}

echo "Build docker with tag ${TAG}"

docker build -t "${DOCKER_REPO}:${TAG}" .
docker push "${DOCKER_REPO}:${TAG}"
docker rmi "${DOCKER_REPO}:${TAG}"