#!/bin/bash

DIR=$(realpath $(dirname $0))
${DIR}/build-builder.sh

TARGET_MACHINE=${1:ccimx6ulsbcpro}

pushd ${DIR}/../
docker run --rm -it --privileged -v ${DIR}/../balena-digi:/home/build docker-balena:${RELEASE} ./balena-yocto-scripts/build/barys --rm-work -d --machine ${TARGET_MACHINE}
popd
