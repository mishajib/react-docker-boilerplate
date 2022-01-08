#!/bin/sh
set -e

cd /app
yarn install
yarn global add react-scripts@3.4.1

exec "$@"
