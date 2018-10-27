#/bin/bash
# Retrieves information about the CloudFormation stack the application was deployed to
#
source ./script/cfn-env.sh

aws cloudformation describe-stacks \
    --region ${APPLICATION_REGION} \
    --stack-name "${APPLICATION_NAME}-${APPLICATION_REGION}"
