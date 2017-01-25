#!/usr/bin/env sh

# Get tag from commit sha1
TAG=${CI_BUILD_REF_SLUG}-${CI_BUILD_REF:0:8}

echo "Build docker with tag ${TAG}"

echo "PUSH TO ${DOCKER_REPO}:${TAG}"

# docker build -t "${DOCKER_REPO}:${TAG}" .
# docker tag php-ci $PUSH
# docker push $PUSH