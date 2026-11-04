#!/usr/bin/env bash
set -e

# Load environment variables
source "$(dirname "$0")/../.env"

# Create/update group_vars/all.yml
cat > "$(dirname "$0")/../ansible/group_vars/all.yml" << EOL
aws_region: "${AWS_REGION}"
aws_access_key_id: "{{ lookup('env', 'AWS_ACCESS_KEY_ID') }}"
aws_secret_access_key: "{{ lookup('env', 'AWS_SECRET_ACCESS_KEY') }}"
ecs_cluster_name: "${ECS_CLUSTER_NAME}"
base_domain: "${BASE_DOMAIN}"
vpc_id: "${VPC_ID}"
security_group_id: "${ECS_TASKS_SG_ID:-${ALB_SG_ID}}"

# Subnets for ECS tasks
vpc_subnets:
  - "${SUBNET_1_ID}"
  - "${SUBNET_2_ID}"

# Docker images in ECR
laravel_image: "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-laravel:latest"
mssql_image: "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-mssql:latest"

sa_password: "{{ lookup('env', 'MSSQL_SA_PASSWORD') }}"
app_key: "{{ lookup('env', 'APP_KEY') }}"

# Pre-existing ALB
alb_name: "${ALB_NAME}"
alb_arn: "${ALB_ARN}"
acm_certificate_arn: "${ACM_CERTIFICATE_ARN}"

# ECS IAM roles
ecs_task_execution_role_arn: "${ECS_TASK_EXECUTION_ROLE_ARN}"
ecs_task_role_arn: "${ECS_TASK_ROLE_ARN}"



# Ephemeral usage
environment_tag: "ephemeral"
default_expire_days: 5
EOL

echo "Updated ansible/group_vars/all.yml with nonsecret values and runtime secret lookups"
