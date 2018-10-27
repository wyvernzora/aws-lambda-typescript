#!/bin/bash
# Loads environment configuration
#
if [ -f './.env' ]; then
    source './.env'
fi

if [[ -z "$APPLICATION_NAME" ]]; then
    export APPLICATION_NAME=$(jq '.name' package.json | tr -d '"')
fi
if [[ -z "$APPLICATION_NAME" ]]; then
    echo "APPLICATION_NAME environment variable is required"
fi

if [[ -z "$APPLICATION_REGION" ]]; then
    export APPLICATION_REGION=${AWS_DEFAULT_REGION:-us-east-1}
fi
