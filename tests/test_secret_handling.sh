#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "$0")/.." && pwd)"
fixture_dir="$(mktemp -d)"
trap 'rm -r "$fixture_dir"' EXIT
mkdir -p "$fixture_dir/infra/scripts" "$fixture_dir/infra/ansible/group_vars" "$fixture_dir/bin"
cp "$repo_dir/my-infra/scripts/update_ansible_vars.sh" "$fixture_dir/infra/scripts/"
cp "$repo_dir/my-infra/scripts/build_and_push_"*.sh "$fixture_dir/infra/scripts/"

# Given private runtime values; when generated; then only lookups are persisted.
cat > "$fixture_dir/infra/.env" <<'ENV'
AWS_ACCOUNT_ID=123456789012
AWS_REGION=us-east-1
AWS_ACCESS_KEY_ID=fixture-access
AWS_SECRET_ACCESS_KEY=fixture-secret
ECS_CLUSTER_NAME=fixture-cluster
BASE_DOMAIN=example.test
VPC_ID=vpc-fixture
SUBNET_1_ID=subnet-one
SUBNET_2_ID=subnet-two
ALB_SG_ID=sg-load-balancer
ECS_TASKS_SG_ID=sg-tasks
ALB_NAME=fixture-alb
ALB_ARN=arn:fixture:loadbalancer
ACM_CERTIFICATE_ARN=arn:fixture:certificate
ECS_TASK_EXECUTION_ROLE_ARN=arn:fixture:execution-role
ECS_TASK_ROLE_ARN=arn:fixture:task-role
MSSQL_SA_PASSWORD='fixture-password-with-$-and-"-quotes'
APP_KEY=fixture-application-key
ENV
bash "$fixture_dir/infra/scripts/update_ansible_vars.sh"
config_file="$fixture_dir/infra/ansible/group_vars/all.yml"
for marker in fixture-access fixture-secret fixture-password fixture-application-key; do
    if grep -qF "$marker" "$config_file"; then
        printf 'A runtime secret was serialized into generated YAML.\n' >&2
        exit 1
    fi
done
set -a
source "$fixture_dir/infra/.env"
set +a
ansible localhost -i localhost, -c local -m ansible.builtin.assert -e "@$config_file" -a '{"quiet":true,"that":["aws_access_key_id == lookup(\"env\", \"AWS_ACCESS_KEY_ID\")","aws_secret_access_key == lookup(\"env\", \"AWS_SECRET_ACCESS_KEY\")","sa_password == lookup(\"env\", \"MSSQL_SA_PASSWORD\")","app_key == lookup(\"env\", \"APP_KEY\")","base_domain == \"example.test\"","security_group_id == \"sg-tasks\"","alb_arn == \"arn:fixture:loadbalancer\"","vpc_id == \"vpc-fixture\""]}'

# Given a PHP-level PDO adapter; when connected; then runtime credentials reach PDO.
export REAL_PHP="$(command -v php)"
cat > "$fixture_dir/bin/php" <<'PHP'
#!/usr/bin/env bash
set -euo pipefail
[[ $1 == -r ]]
exec "$REAL_PHP" -r 'namespace SecretHandlingTest;
class PDO {
    const ATTR_ERRMODE = 1;
    const ERRMODE_EXCEPTION = 2;
    public function __construct($dsn, $user, $password) {
        if ($password !== getenv("EXPECTED_PASSWORD") || $user !== "sa" || $dsn !== "sqlsrv:Server=localhost,1433;Database=cypress_test") { exit(42); }
    }
    public function setAttribute($name, $value) {}
}
'"$2"
PHP
chmod +x "$fixture_dir/bin/php"
printf '#!/bin/sh\nexit 0\n' > "$fixture_dir/bin/sleep"
chmod +x "$fixture_dir/bin/sleep"
PATH="$fixture_dir/bin:$PATH" DB_PASSWORD=fixture-primary SA_PASSWORD=fixture-secondary EXPECTED_PASSWORD=fixture-primary bash "$repo_dir/my-infra/docker/db-connection-test.sh"
env -u DB_PASSWORD -u SA_PASSWORD PATH="$fixture_dir/bin:$PATH" MSSQL_SA_PASSWORD=fixture-fallback EXPECTED_PASSWORD=fixture-fallback bash "$repo_dir/my-infra/docker/db-connection-test.sh"

# Given absent credentials; when either script starts; then it fails before DB access.
for script in db-connection-test.sh init-db.sh; do
    if env -u DB_PASSWORD -u SA_PASSWORD -u MSSQL_SA_PASSWORD bash "$repo_dir/my-infra/docker/$script" > "$fixture_dir/error.log" 2>&1; then
        printf '%s accepted missing credentials.\n' "$script" >&2
        exit 1
    fi
    grep -q 'at runtime' "$fixture_dir/error.log"
done

# Given an existing local public key; when built from another cwd; then it is retained.
mkdir -p "$fixture_dir/infra/docker/.ssh"
printf 'fixture-public-key\n' > "$fixture_dir/infra/docker/.ssh/authorized_keys"
export COMMAND_LOG="$fixture_dir/commands.log"
cat > "$fixture_dir/bin/aws" <<'AWS'
#!/usr/bin/env bash
set -eu
test "$AWS_ACCESS_KEY_ID" = fixture-access
printf 'aws %s\n' "$*" >> "$COMMAND_LOG"
if [ "$2" = get-login-password ]; then printf 'fixture-ecr-token\n'; fi
AWS
cat > "$fixture_dir/bin/docker" <<'DOCKER'
#!/usr/bin/env bash
set -eu
printf 'docker %s\n' "$*" >> "$COMMAND_LOG"
if [ "$1" = login ]; then read -r token; test "$token" = fixture-ecr-token; fi
DOCKER
cat > "$fixture_dir/bin/ssh-keygen" <<'SSH'
#!/usr/bin/env bash
printf 'An existing public key must not be overwritten.\n' >&2
exit 1
SSH
chmod +x "$fixture_dir/bin/aws" "$fixture_dir/bin/docker" "$fixture_dir/bin/ssh-keygen"
for image in laravel mssql; do
    (cd "$fixture_dir" && PATH="$fixture_dir/bin:$PATH" bash "$fixture_dir/infra/scripts/build_and_push_$image.sh")
    grep -q -- "-f $fixture_dir/infra/docker/Dockerfile.$image $fixture_dir/infra/docker" "$COMMAND_LOG"
done
test "$(cat "$fixture_dir/infra/docker/.ssh/authorized_keys")" = fixture-public-key

# Given only a replacement private key; when built; then its public key is derived.
rm "$fixture_dir/infra/docker/.ssh/authorized_keys"
printf 'fixture-private-key\n' > "$fixture_dir/infra/explore-api-uat.pem"
cat > "$fixture_dir/bin/ssh-keygen" <<'SSH'
#!/usr/bin/env bash
set -eu
test "$1" = -y
test "$2" = -f
test -f "$3"
printf 'fixture-derived-key\n'
SSH
PATH="$fixture_dir/bin:$PATH" bash "$fixture_dir/infra/scripts/build_and_push_mssql.sh"
test "$(cat "$fixture_dir/infra/docker/.ssh/authorized_keys")" = fixture-derived-key

# Given no authorization key; when built; then no AWS or Docker calls occur.
rm "$fixture_dir/infra/docker/.ssh/authorized_keys" "$fixture_dir/infra/explore-api-uat.pem"
calls_before="$(wc -l < "$COMMAND_LOG")"
if PATH="$fixture_dir/bin:$PATH" bash "$fixture_dir/infra/scripts/build_and_push_mssql.sh" > "$fixture_dir/error.log" 2>&1; then
    printf 'A builder accepted missing authorization keys.\n' >&2
    exit 1
fi
test "$(wc -l < "$COMMAND_LOG")" = "$calls_before"
printf 'Secret-handling checks passed.\n'
