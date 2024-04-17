#!/usr/bin/env bash
CUR_DIR=$(pwd)
SCRIPT_DIR=$(realpath $(dirname "$0"))

cd ${SCRIPT_DIR}/cexample
make

cd ${SCRIPT_DIR}
CGO_ENABLED=1 go build \
    -ldflags '-w -extldflags "-static"' \
    -o bin/static \
    cgoexp/cmd/cgoexp
CGO_ENABLED=1 go build \
    -o bin/dynamic \
    cgoexp/cmd/cgoexp

cd ${CUR_DIR}
