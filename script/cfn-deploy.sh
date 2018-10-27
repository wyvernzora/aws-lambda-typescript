#!/bin/bash
# Deploys uploaded artifacts to CloudFormations tack
#
source ./script/cfn-env.sh

aws cloudformation deploy \
    --template-file .pkg/package.yml \
    --region ${APPLICATION_REGION} \
    --capabilities CAPABILITY_IAM \
    --stack-name "${APPLICATION_NAME}-${APPLICATION_REGION}"
