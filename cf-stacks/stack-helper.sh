#! /bin/bash

# Creating stacks

# Create S3 stack
aws cloudformation create-stack --stack-name recipe-s3-bucket-stack --template-body file://cf-stacks/s3-stack.yml --profile myg

# Create vpc stack
aws cloudformation create-stack --stack-name recipe-vpc-stack --template-body file://cf-stacks/vpc-stack.yml --profile myg


# Delete the stacks

delete-stack --stack-name recipe-vpc-stack  --profile myg

# Delete the VPC
aws cloudformation delete-stack --stack-name recipe-s3-bucket-stack --profile myg
