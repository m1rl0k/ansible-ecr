#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "$0")/.." && pwd)"
fixture_dir="$(mktemp -d)"
trap 'rm -r "$fixture_dir"' EXIT
mkdir -p "$fixture_dir/bin"
ln -s "$repo_dir/tests/cleanup_aws" "$fixture_dir/bin/aws"

playbook="$repo_dir/my-infra/ansible/playbooks/cleanup_ephemeral_port.yml"
common_env=(
    AWS_ACCESS_KEY_ID=fixture-access
    AWS_SECRET_ACCESS_KEY=fixture-secret
    ECS_CLUSTER_NAME=fixture-cluster
    BASE_DOMAIN=example.test
    MSSQL_SA_PASSWORD=fixture-password
    APP_KEY=fixture-key
    PATH="$fixture_dir/bin:$PATH"
)

run_cleanup() {
    local scenario="$1" log="$2"
    shift 2
    : > "$log"
    env "${common_env[@]}" AWS_FAKE_SCENARIO="$scenario" AWS_FAKE_LOG="$log" \
        ansible-playbook -i localhost, "$playbook" \
        -e vpc_id=vpc-fixture -e alb_arn=arn:fixture:alb -e environment_tag=ephemeral "$@"
}

assert_called() {
    grep -qF "$2" "$1" || { printf 'Missing expected call: %s\n' "$2" >&2; return 1; }
}

assert_not_called() {
    if grep -qF "$2" "$1"; then
        printf 'Unexpected call: %s\n' "$2" >&2
        return 1
    fi
}

line_no() {
    grep -nF "$2" "$1" | head -1 | cut -d: -f1
}

assert_before() {
    local first second
    first="$(line_no "$1" "$2")"
    second="$(line_no "$1" "$3")"
    if [[ -z "$first" || -z "$second" || "$first" -ge "$second" ]]; then
        printf 'Expected "%s" before "%s".\n' "$2" "$3" >&2
        return 1
    fi
}

expired=11111111111111
future=22222222222222
unowned=33333333333333
orphan=44444444444444
unknown_cluster=55555555555555
log_only=66666666666666
default_log="$fixture_dir/default.log"

# Given mixed owned, future, unowned, shared, and orphaned resources; when janitor cleanup runs; then only expired owned resources are removed.
run_cleanup default "$default_log" > "$fixture_dir/default.out"
assert_called "$default_log" "MUTATE application-autoscaling deregister-scalable-target --service-namespace ecs --resource-id service/fixture-cluster/ephemeral-$expired"
assert_called "$default_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$expired --desired-count 0"
assert_called "$default_log" "MUTATE ecs delete-service --cluster fixture-cluster --service ephemeral-$expired"
assert_called "$default_log" "MUTATE ecs wait services-inactive --cluster fixture-cluster --services ephemeral-$expired"
assert_called "$default_log" "MUTATE elbv2 delete-listener --listener-arn listener-expired"
assert_called "$default_log" "MUTATE elbv2 delete-target-group --target-group-arn arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/tg-port9001-$expired/hash9001"
assert_called "$default_log" "MUTATE ecs deregister-task-definition --task-definition arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$expired:1"
assert_called "$default_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$expired:0"
assert_called "$default_log" "MUTATE logs delete-log-group --log-group-name /ecs/ephemeral/$expired"
assert_called "$default_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$orphan:1"
assert_called "$default_log" "MUTATE elbv2 delete-target-group --target-group-arn arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/tg-port9004-$orphan/hash9004"
assert_called "$default_log" "MUTATE logs delete-log-group --log-group-name /ecs/ephemeral/$log_only"
assert_not_called "$default_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$future --desired-count 0"
assert_not_called "$default_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$unowned --desired-count 0"
assert_not_called "$default_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$unknown_cluster:1"
assert_not_called "$default_log" "MUTATE logs delete-log-group --log-group-name /ecs/ephemeral/$future"
assert_not_called "$default_log" "MUTATE logs delete-log-group --log-group-name /ecs/ephemeral/$unowned"
assert_not_called "$default_log" "listener-443"
assert_before "$default_log" "MUTATE application-autoscaling deregister-scalable-target" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$expired --desired-count 0"
assert_before "$default_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$expired --desired-count 0" "MUTATE ecs delete-service --cluster fixture-cluster --service ephemeral-$expired"
assert_before "$default_log" "MUTATE ecs delete-service --cluster fixture-cluster --service ephemeral-$expired" "MUTATE ecs wait services-inactive --cluster fixture-cluster --services ephemeral-$expired"
assert_before "$default_log" "MUTATE ecs wait services-inactive --cluster fixture-cluster --services ephemeral-$expired" "MUTATE elbv2 delete-listener --listener-arn listener-expired"
assert_before "$default_log" "MUTATE ecs deregister-task-definition --task-definition arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$expired:1" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$expired:1"

# Given an explicit CI environment id; when cleanup is called with it; then the selected live environment is removed even before expiry.
explicit_log="$fixture_dir/explicit.log"
run_cleanup default "$explicit_log" -e "environment_id=$future" > "$fixture_dir/explicit.out"
assert_called "$explicit_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$future --desired-count 0"
assert_not_called "$explicit_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$expired --desired-count 0"
assert_not_called "$explicit_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$unowned --desired-count 0"
assert_not_called "$explicit_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$unowned:1"

# Given an invalid id; when cleanup starts; then validation fails before any AWS call.
invalid_log="$fixture_dir/invalid.log"
if run_cleanup default "$invalid_log" -e environment_id=bad > "$fixture_dir/invalid.out" 2>&1; then
    printf 'Invalid environment_id was accepted.\n' >&2
    exit 1
fi
test ! -s "$invalid_log"

# Given no ephemeral inventory; when janitor cleanup runs; then no destructive calls are made.
empty_log="$fixture_dir/empty.log"
run_cleanup empty "$empty_log" > "$fixture_dir/empty.out"
assert_not_called "$empty_log" "MUTATE"

# Given a future service still owns matching definitions and target groups; when janitor cleanup runs; then those dependencies are retained.
retained_log="$fixture_dir/retained.log"
run_cleanup retained "$retained_log" > "$fixture_dir/retained.out"
assert_not_called "$retained_log" "MUTATE ecs update-service --cluster fixture-cluster --service ephemeral-$future --desired-count 0"
assert_not_called "$retained_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$future:1"
assert_not_called "$retained_log" "MUTATE elbv2 delete-target-group --target-group-arn arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/tg-port9002-$future/hash9002"
assert_called "$retained_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$orphan:1"
assert_not_called "$retained_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$unknown_cluster:1"

# Given check mode; when cleanup is planned; then inventory still runs but destructive AWS calls do not.
check_log="$fixture_dir/check.log"
run_cleanup default "$check_log" --check > "$fixture_dir/check.out"
assert_called "$check_log" "CALL ecs list-services"
assert_not_called "$check_log" "MUTATE"

# Given AWS returns an error for a delete; when cleanup runs; then the play fails and later deletes are not attempted.
listener_error_log="$fixture_dir/listener_error.log"
if run_cleanup listener_error "$listener_error_log" > "$fixture_dir/listener_error.out" 2>&1; then
    printf 'Listener deletion error was ignored.\n' >&2
    exit 1
fi
assert_not_called "$listener_error_log" "MUTATE elbv2 delete-target-group --target-group-arn arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/tg-port9001-$expired/hash9001"

# Given AWS reports task-definition failures with rc=0; when cleanup runs; then the play fails.
failures_log="$fixture_dir/failures.log"
if run_cleanup failures_array "$failures_log" > "$fixture_dir/failures.out" 2>&1; then
    printf 'Task definition failures array was ignored.\n' >&2
    exit 1
fi
assert_called "$failures_log" "MUTATE ecs delete-task-definitions --task-definitions arn:aws:ecs:us-east-1:123456789012:task-definition/ephemeral-$expired:1"
assert_not_called "$failures_log" "MUTATE logs delete-log-group --log-group-name /ecs/ephemeral/$expired"

printf 'Cleanup checks passed.\n'
