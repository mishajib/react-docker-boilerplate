#!/bin/sh
set -e

cd /app

yarn global add react-scripts
yarn install

exec "$@"
