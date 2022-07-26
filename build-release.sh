#!/bin/bash
docker build --no-cache -t hackinglab/ubuntu-base:$1.0 -t hackinglab/ubuntu-base:$1 -t hackinglab/ubuntu-base:latest -f Dockerfile .

docker push hackinglab/ubuntu-base
docker push hackinglab/ubuntu-base:$1
docker push hackinglab/ubuntu-base:$1.0

