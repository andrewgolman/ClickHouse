#!/usr/bin/env bash
set -e -x

source default-config

# TODO Non-debian systems

sudo apt-get -y install libssl-dev libicu-dev libreadline-dev libmysqlclient-dev unixodbc-dev

if [[ "$ENABLE_EMBEDDED_COMPILER" == 1 && "$USE_LLVM_LIBRARIES_FROM_SYSTEM" == 1 ]]; then
    sudo apt-get -y install liblld-5.0-dev libclang-5.0-dev
fi