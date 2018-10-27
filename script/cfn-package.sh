#/bin/bash
# Packages and uploads build artifacts to S3
#
source ./script/cfn-env.sh

# Build CloudFormation templates from parts
merge-yaml -i $(find cloudformation -type f -iname '*.yml' -o -type f -iname '*.yaml') -o .pkg/template.yml

aws cloudformation package \
    --template-file .pkg/template.yml \
    --s3-bucket "sam-deploy-${APPLICATION_NAME}-${APPLICATION_REGION}" \
    --region ${APPLICATION_REGION} \
    --output-template-file .pkg/package.yml
