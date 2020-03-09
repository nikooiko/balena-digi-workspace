#!/bin/bash

DIR=$(realpath $(dirname $0))
pushd ${DIR}/../docker-balena
docker build -t docker-balena:${RELEASE} --build-arg FSL_BRANCH=${RELEASE} .
popd
