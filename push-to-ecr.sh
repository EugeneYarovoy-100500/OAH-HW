#!/bin/bash
$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t oah-hw .
docker tag oah-hw:latest 334211582633.dkr.ecr.us-east-1.amazonaws.com/oah-hw:latest
docker push 334211582633.dkr.ecr.us-east-1.amazonaws.com/oah-hw:latest
