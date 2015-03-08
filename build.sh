#!/bin/bash
TARGET=${TARGET:-/opt/bin}
REPO=${REPO:-guruvan}
NAME=setup-network-environment
docker build -t ${REPO}/${NAME} .
docker run -it --rm -v ${TARGET}:/target ${REPO}/${NAME}
