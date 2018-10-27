#!/bin/bash
# Configures S3 deployment bucket for SAM application
#
source ./script/cfn-env.sh

aws s3api create-bucket \
    --bucket "sam-deploy-${APPLICATION_NAME}-${APPLICATION_REGION}" \
    --region "${APPLICATION_REGION}" \
    --create-bucket-configuration LocationConstraint=${APPLICATION_REGION}
