# Ephemeral ECS Environments

This solution creates ephemeral environments in ECS using a shared ALB with dynamic port allocation. Each environment consists of a Laravel application and MSSQL database.

## Directory Structure

```
my-infra/
├── docker/
│   ├── Dockerfile.laravel    # Laravel application container
│   ├── Dockerfile.mssql      # MSSQL database container
│   ├── laravel_app/          # Your Laravel application code
│   └── mssql_data/           # Optional MSSQL data/scripts
├── ansible/
│   ├── group_vars/
│   │   └── all.yml          # Configuration variables
│   ├── playbooks/
│   │   ├── create_ephemeral_port.yml
│   │   └── cleanup_ephemeral_port.yml
│   └── ansible.cfg
├── scripts/
│   ├── build_and_push_laravel.sh
│   └── build_and_push_mssql.sh
└── .env
```

## Prerequisites

Before using this solution, you need to set up some AWS infrastructure:

### 1. Create ECR Repositories

```bash
# Create ECR repo for Laravel
aws ecr create-repository \
    --repository-name my-laravel \
    --region ${AWS_REGION} \
    --image-scanning-configuration scanOnPush=true

# Create ECR repo for MSSQL
aws ecr create-repository \
    --repository-name my-mssql \
    --region ${AWS_REGION} \
    --image-scanning-configuration scanOnPush=true

# Build and push Laravel image
docker build -t my-laravel:latest \
    --platform linux/amd64 \
    -f docker/Dockerfile.laravel docker/

docker tag my-laravel:latest ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-laravel:latest
aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-laravel:latest



# Build and push MSSQL image (if using custom Dockerfile)
docker build -t my-mssql:latest \
    --platform linux/amd64 \
    -f docker/Dockerfile.mssql docker/
docker tag my-mssql:latest ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-mssql:latest
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/my-mssql:latest
```

Note: The build and push commands are also available in the scripts:
```bash
./scripts/build_and_push_laravel.sh
./scripts/build_and_push_mssql.sh
```

### 2. Create Required IAM Roles

Create the task execution role:
```bash
# Create ECS task execution role
aws iam create-role \
    --role-name ecsTaskExecutionRole \
    --region ${AWS_REGION} \
    --assume-role-policy-document file://task-execution-assume-role.json

# Attach policy
aws iam attach-role-policy \
    --role-name ecsTaskExecutionRole \
    --region ${AWS_REGION} \
    --policy-arn arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy
```

Create the task role:
```bash
# Create ECS task role
aws iam create-role \
    --role-name ecsTaskRole \
    --region ${AWS_REGION} \
    --assume-role-policy-document file://task-assume-role.json

# Attach policy
aws iam attach-role-policy \
    --role-name ecsTaskRole \
    --region ${AWS_REGION} \
    --policy-arn arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy
```

### 3. Create ECS Cluster

```bash
# Create ECS cluster
aws ecs create-cluster \
    --cluster-name ${ECS_CLUSTER_NAME} \
    --region ${AWS_REGION} \
    --capacity-providers FARGATE \
    --default-capacity-provider-strategy capacityProvider=FARGATE,weight=1
```

### 4. Create Load Balancer Infrastructure

You'll need:
- A VPC with at least 2 public subnets
- An Application Load Balancer (ALB)
- Security group allowing inbound traffic on:
  - Port 443 (HTTPS)
  - Ports 9000-9999 (for ephemeral environments)

```bash
# Example security group rules for ALB
aws ec2 authorize-security-group-ingress \
    --group-id ${ALB_SG_ID} \
    --region ${AWS_REGION} \
    --protocol tcp \
    --port 443 \
    --cidr 0.0.0.0/0

aws ec2 authorize-security-group-ingress \
    --group-id ${ALB_SG_ID} \
    --region ${AWS_REGION} \
    --protocol tcp \
    --port 9000-9999 \
    --cidr 0.0.0.0/0
```

### 5. Update Configuration

Copy the example .env file and update with your values:
```bash
cp .env.example .env
# Edit .env with your values
# Source the environment variables
source .env
```

## Usage

1. Build and push Docker images:
```bash
# These scripts will use values from .env
./scripts/build_and_push_laravel.sh
./scripts/build_and_push_mssql.sh
```

2. Create an ephemeral environment:
```bash
# This will use values from ansible/group_vars/all.yml (generated from .env)
ansible-playbook ansible/playbooks/create_ephemeral_port.yml
```

3. Clean up expired environments:
```bash
# This will use values from ansible/group_vars/all.yml (generated from .env)
ansible-playbook ansible/playbooks/cleanup_ephemeral_port.yml
```

## How It Works

1. When creating an environment:
   - Randomly selects an unused port (9000-9999)
   - Creates an HTTPS listener on the ALB for that port
   - Deploys an ECS service with Laravel and MSSQL containers
   - Creates a Route53 record `ephemeral-<uniqueid>.example.com`

2. The environment will be accessible at:
   ```
   https://ephemeral-<uniqueid>.example.com:<port>/
   ```

3. The Laravel container can communicate with MSSQL via `localhost:1433`

4. All resources are tagged with:
   - `Environment=ephemeral`
   - `ExpireOn=YYYY-MM-DD`

5. The cleanup playbook removes expired resources automatically

## Notes

- Each environment gets its own port and DNS record
- Environments expire after a configurable number of days
- The MSSQL container uses SQL Server Express edition
- Both containers run in the same ECS task for easy communication
- The solution uses a single, shared ALB to minimize costs

## Optional: Private Subnet Setup

If you want to run your ECS tasks in private subnets (recommended for production), you'll need these additional resources:

### 1. Create Private Subnets

```bash
# Create private subnets
aws ec2 create-subnet \
    --vpc-id ${VPC_ID} \
    --cidr-block 10.0.3.0/24 \
    --availability-zone ${AWS_REGION}a \
    --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=private-1a}]'

aws ec2 create-subnet \
    --vpc-id ${VPC_ID} \
    --cidr-block 10.0.4.0/24 \
    --availability-zone ${AWS_REGION}b \
    --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=private-1b}]'
```

### 2. Create NAT Gateway

```bash
# Create Elastic IP for NAT Gateway
aws ec2 allocate-address \
    --domain vpc \
    --tag-specifications 'ResourceType=elastic-ip,Tags=[{Key=Name,Value=nat-eip}]'

# Create NAT Gateway in a public subnet
aws ec2 create-nat-gateway \
    --subnet-id ${SUBNET_1_ID}  # One of your public subnets
    --allocation-id ${ELASTIC_IP_ID}
```

### 3. Create Private Route Table

```bash
# Create route table for private subnets
aws ec2 create-route-table \
    --vpc-id ${VPC_ID} \
    --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=private-rt}]'

# Add route through NAT Gateway
aws ec2 create-route \
    --route-table-id ${PRIVATE_RTB_ID} \
    --destination-cidr-block 0.0.0.0/0 \
    --nat-gateway-id ${NAT_GATEWAY_ID}

# Associate with private subnets
aws ec2 associate-route-table \
    --subnet-id ${PRIVATE_SUBNET_1_ID} \
    --route-table-id ${PRIVATE_RTB_ID}

aws ec2 associate-route-table \
    --subnet-id ${PRIVATE_SUBNET_2_ID} \
    --route-table-id ${PRIVATE_RTB_ID}
```

### 4. Create VPC Endpoints

```bash
# Create security group for VPC endpoints
aws ec2 create-security-group \
    --group-name vpc-endpoints-sg \
    --description "Security group for VPC endpoints" \
    --vpc-id ${VPC_ID}

# Allow HTTPS inbound from private subnets
aws ec2 authorize-security-group-ingress \
    --group-id ${ENDPOINTS_SG_ID} \
    --protocol tcp \
    --port 443 \
    --source-security-group-id ${ECS_TASKS_SG_ID}

# Create endpoints (interface type)
aws ec2 create-vpc-endpoint \
    --vpc-id ${VPC_ID} \
    --vpc-endpoint-type Interface \
    --service-name com.amazonaws.${AWS_REGION}.ecr.api \
    --subnet-ids ${PRIVATE_SUBNET_1_ID} ${PRIVATE_SUBNET_2_ID} \
    --security-group-ids ${ENDPOINTS_SG_ID}

aws ec2 create-vpc-endpoint \
    --vpc-id ${VPC_ID} \
    --vpc-endpoint-type Interface \
    --service-name com.amazonaws.${AWS_REGION}.ecr.dkr \
    --subnet-ids ${PRIVATE_SUBNET_1_ID} ${PRIVATE_SUBNET_2_ID} \
    --security-group-ids ${ENDPOINTS_SG_ID}

# Create S3 endpoint (gateway type)
aws ec2 create-vpc-endpoint \
    --vpc-id ${VPC_ID} \
    --vpc-endpoint-type Gateway \
    --service-name com.amazonaws.${AWS_REGION}.s3 \
    --route-table-ids ${PRIVATE_RTB_ID}
```

### 5. Update ECS Task Security Group

```bash
# Create security group for ECS tasks
aws ec2 create-security-group \
    --group-name ecs-tasks-sg \
    --description "Security group for ECS tasks" \
    --vpc-id ${VPC_ID}

# Allow inbound from ALB
aws ec2 authorize-security-group-ingress \
    --group-id ${ECS_TASKS_SG_ID} \
    --protocol tcp \
    --port 80 \
    --source-security-group-id ${ALB_SG_ID}

# Allow container-to-container communication (MSSQL)
aws ec2 authorize-security-group-ingress \
    --group-id ${ECS_TASKS_SG_ID} \
    --protocol tcp \
    --port 1433 \
    --source-security-group-id ${ECS_TASKS_SG_ID}

# Allow SSH access
aws ec2 authorize-security-group-ingress \
    --group-id ${ECS_TASKS_SG_ID} \
    --protocol tcp \
    --port 22 \
    --cidr 0.0.0.0/0
```

### 6. Update .env and Configuration

Add these variables to your .env:
```bash
# Private Subnets (for ECS tasks)
PRIVATE_SUBNET_1_ID="subnet-xxxxx"
PRIVATE_SUBNET_2_ID="subnet-xxxxx"

# Security Groups
ECS_TASKS_SG_ID="sg-xxxxx"
```

Update the ansible/group_vars/all.yml generation to use private subnets:
```diff
vpc_subnets:
-   - "${SUBNET_1_ID}"
-   - "${SUBNET_2_ID}"
+   - "${PRIVATE_SUBNET_1_ID}"
+   - "${PRIVATE_SUBNET_2_ID}"
```

This setup allows your ECS tasks to:
1. Run in private subnets
2. Pull images from ECR via VPC endpoints
3. Access the internet through NAT Gateway (if needed)
4. Communicate securely between containers
5. Receive traffic only from the ALB

## SSH Access to Containers

To SSH into the containers:
```bash
# Using the .pem key
ssh -i explore-api-uat.pem root@<container-ip>
```

Note: Make sure the security group allows inbound traffic on port 22

This README provides:
1. Clear directory structure
2. Step-by-step setup instructions
3. Configuration requirements
4. Usage instructions
5. Explanation of how the solution works
6. Important notes about the implementation

