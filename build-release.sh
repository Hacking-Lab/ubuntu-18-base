#!/bin/bash
docker build --no-cache -t hackinglab/ubuntu-18-base:$1.0 -t hackinglab/ubuntu-18-base:$1 -t hackinglab/ubuntu-18-base:latest -f Dockerfile .

docker push hackinglab/ubuntu-18-base
docker push hackinglab/ubuntu-18-base:$1
docker push hackinglab/ubuntu-18-base:$1.0

