#! /bin/bash

# Creating stacks

# Create S3 stack
aws cloudformation create-stack --stack-name recipe-s3-bucket-stack --template-body file://cf-stacks/s3-stack.yml --profile myg

# Create vpc stack
aws cloudformation create-stack --stack-name recipe-vpc-stack --template-body file://cf-stacks/vpc-stack.yml --profile myg

# Create the app stack
aws cloudformation create-stack --region us-east-1 --stack-name recipe-app-stack --template-body file://cf-stacks/app-stack.yml --parameters ParameterKey=KeyPair,ParameterValue=cloud-arch --capabilities CAPABILITY_IAM --profile myg

# Delete the stacks

delete-stack --stack-name recipe-vpc-stack  --profile myg

# Delete the VPC
aws cloudformation delete-stack --stack-name recipe-s3-bucket-stack --profile myg

