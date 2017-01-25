#!/usr/bin/env sh

# Get tag from commit sha1
TAG=$(git rev-parse --short HEAD)
BRANCH=$(git rev-parse --abbrev-ref HEAD)
PUSH=gitlab.skyshi.com:5000/gilankpam/php-ci:${BRANCH}-${TAG}

docker build -t php-ci .
docker tag php-ci $PUSH
docker push $PUSH