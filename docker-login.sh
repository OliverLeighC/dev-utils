#!/usr/bin/env bash
set -ex

PROFILE=$1
ACCOUNT=$2

docker login -u AWS -p $(aws ecr get-login-password --profile $PROFILE --region us-east-1) https://$ACCOUNT.dkr.ecr.us-east-1.amazonaws.com