#!/bin/bash
`aws ecr get-login --region us-east-1`
docker build -t sc-boardwalk-production .
docker tag sc-boardwalk-production:latest 599399774093.dkr.ecr.us-east-1.amazonaws.com/sc-boardwalk-production:latest
docker push 599399774093.dkr.ecr.us-east-1.amazonaws.com/sc-boardwalk-production:latest
