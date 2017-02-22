#!/usr/bin/env sh

# Get version from btanch name and commit sha1
TAG=${CI_BUILD_REF_SLUG}-${CI_BUILD_REF:0:8}

# create host file 
echo "${DEPLOY_HOST} ansible_user=${DEPLOY_USER} ansible_ssh_pass=${DEPLOY_PASS}" > hosts

# Run playbook
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -e "TAG=${TAG}" -i hosts playbook.yml
