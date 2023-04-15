#!/bin/bash

pushd $(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)

echo USER_ID=$(id -u) > .env
echo GROUP_ID=$(id -g) >> .env
echo USER_NAME=$(id -un) >> .env

popd
