#!/usr/bin/env bash
SCRIPT_DIR=$(realpath $(dirname "$0"))
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${SCRIPT_DIR}/cexample/lib ${SCRIPT_DIR}/bin/dynamic
