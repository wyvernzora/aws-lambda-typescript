# AWS Lambda Typescript

This is a starter template for deploying AWS Lambdas using Typescript, Webpack and CloudFormation.

## Getting Started

 - Edit `package.json` as needed
 - Create `.env` file with your AWS credentials
```
export AWS_ACCESS_KEY_ID=access-key-id
export AWS_SECRET_ACCESS_KEY=secret-access-key
export AWS_DEFAULT_REGION=us-west-2
```
 - Run `npm run cfn:configure` to set up deployment S3 bucket
 - Run `npm run cfn:deploy` to build the application and deploy to AWS

## NPM Scripts:

### `build`
Executes webpack and bundles output into `.pkg/dist` directory.

### `cfn:configure`
Creates the S3 bucket where build artifacts are uploaded.

### `cfn:package`
Merges all CloudFormation templates in the `cloudformation` directory; packages all build artifacts and uploads them to the configured S3 bucket.

### `cfn:deploy`
Creates a changeset from the latest packaging step and deploys to CloudFormation stack.

