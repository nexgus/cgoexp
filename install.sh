#!/usr/bin/env bash
CUR_DIR=$(pwd)
SCRIPT_DIR=$(realpath $(dirname "$0"))
cd ${SCRIPT_DIR}

sudo mkdir -p /usr/local/cgoexp
sudo cp cexample/lib/*.so /usr/local/cgoexp

sudo cp cgoexp.conf /etc/ld.so.conf.d
sudo ldconfig
