#!/bin/bash

case "$2" in
        create)
            aws cloudformation $2-stack --stack-name $1 --template-body file://final-project.yml  --parameters file://parameters.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-2
            ;;
        
        update)
            aws cloudformation $2-stack --stack-name $1 --template-body file://final-project.yml  --parameters file://parameters.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-2
            ;;
         
        delete)
            aws cloudformation $2-stack --stack-name $1
            ;;
        *)
            echo $"Usage: $0 <Stack Name> {create|update|delete}"
            exit 1
esac

