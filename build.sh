#!/bin/sh

docker build -t knight1988/node-serverless:16 -t knight1988/node-serverless:latest . && \
docker push knight1988/node-serverless:16 && \
docker push knight1988/node-serverless:latest

