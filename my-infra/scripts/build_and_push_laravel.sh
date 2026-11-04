#!/usr/bin/env bash
set -e

# Load environment variables
infra_dir="$(cd "$(dirname "$0")/.." && pwd)"
docker_dir="$infra_dir/docker"
set -a
source "$infra_dir/.env"
set +a

# Use a locally supplied public key, or derive it from the local private key.
if [ ! -s "$docker_dir/.ssh/authorized_keys" ]; then
    test -f "$infra_dir/explore-api-uat.pem" || { echo "Supply docker/.ssh/authorized_keys or explore-api-uat.pem locally" >&2; exit 1; }
    mkdir -p "$docker_dir/.ssh"
    chmod 600 "$infra_dir/explore-api-uat.pem"
    ssh-keygen -y -f "$infra_dir/explore-api-uat.pem" > "$docker_dir/.ssh/authorized_keys"
fi

REPO_NAME="my-laravel"
REPO_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${REPO_NAME}"

# Try to create repository, ignore if it exists
aws ecr describe-repositories --repository-names $REPO_NAME >/dev/null 2>&1 || \
    aws ecr create-repository --repository-name $REPO_NAME

aws ecr get-login-password --region $AWS_REGION | docker login \
  --username AWS \
  --password-stdin "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"

docker build -t $REPO_NAME:latest \
  --platform linux/amd64 \
  -f "$docker_dir/Dockerfile.laravel" "$docker_dir"
docker tag $REPO_NAME:latest $REPO_URI:latest
docker push $REPO_URI:latest

echo "Pushed $REPO_URI:latest"
