#!/bin/sh -l
set -e

time=$(date)
echo "$time Run: yarn install"
yarn install

time=$(date)
echo "$time Run: yarn test"
yarn test