#!/usr/bin/env sh

# Get version from btanch name and commit sha1
VERSION=${CI_BUILD_REF_SLUG}-${CI_BUILD_REF:0:8}

echo "Build docker with tag ${VERSION}"

docker build -t "${DOCKER_REPO}" .
# Update the latest version also
docker push ${DOCKER_REPO}
docker tag ${DOCKER_REPO} "${DOCKER_REPO}:${VERSION}"
docker push "${DOCKER_REPO}:${VERSION}"
docker rmi -f "${DOCKER_REPO}"