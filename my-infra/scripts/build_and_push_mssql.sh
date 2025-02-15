#!/usr/bin/env bash
set -e

# Load environment variables
source "$(dirname "$0")/../.env"

REPO_NAME="my-mssql"
REPO_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${REPO_NAME}"

# Try to create repository, ignore if it exists
aws ecr describe-repositories --repository-names $REPO_NAME >/dev/null 2>&1 || \
    aws ecr create-repository --repository-name $REPO_NAME

aws ecr get-login-password --region $AWS_REGION | docker login \
  --username AWS \
  --password-stdin "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"

# Create .ssh directory in docker build context
mkdir -p ../docker/.ssh

# Convert .pem to authorized_keys format
chmod 600 ../explore-api-uat.pem
ssh-keygen -y -f ../explore-api-uat.pem > ../docker/.ssh/authorized_keys

# Verify the file exists
ls -la ../docker/.ssh/authorized_keys

docker build -t $REPO_NAME:latest \
  --platform linux/amd64 \
  -f ../docker/Dockerfile.mssql ../docker
docker tag $REPO_NAME:latest $REPO_URI:latest
docker push $REPO_URI:latest

# Clean up
rm -rf ../docker/.ssh

echo "Pushed $REPO_URI:latest" 