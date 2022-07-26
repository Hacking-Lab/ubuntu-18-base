#!/bin/bash
docker build --no-cache -t hackinglab/ubuntu-base:3.2.0 -t hackinglab/ubuntu-base:3.2 -t hackinglab/ubuntu-base:latest -f Dockerfile .
