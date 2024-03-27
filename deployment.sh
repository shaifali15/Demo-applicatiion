#!/bin/bash

#login into aws 
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/a4i3k9q7

#Build Docker image
docker build -t new-acr .

#Adding tag to the image
docker tag new-acr:latest public.ecr.aws/a4i3k9q7/new-acr:latest

#pushing image to ECR
docker push public.ecr.aws/a4i3k9q7/new-acr:latest



