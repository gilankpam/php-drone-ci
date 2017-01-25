#!/usr/bin/env sh

# Get tag from commit sha1
TAG=$(git rev-parse --short HEAD)
BRANCH=$(git rev-parse --abbrev-ref HEAD)
PUSH=gitlab.skyshi.com:5000/gilankpam/php-ci:${BRANCH}-${TAG}

echo "build docker with tag ${BRANCH}-${TAG}"
echo $CI_BUILD_REF
echo $CI_BUILD_REF_NAME
echo $CI_BUILD_REF_SLUG

# docker build -t php-ci .
# docker tag php-ci $PUSH
# docker push $PUSH