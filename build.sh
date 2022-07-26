#!/bin/bash
docker build --no-cache -t hackinglab/ubuntu-18-base:3.2.0 -t hackinglab/ubuntu-18-base:3.2 -t hackinglab/ubuntu-18-base:latest -f Dockerfile .
