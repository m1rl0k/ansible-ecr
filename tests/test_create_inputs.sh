#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "$0")/.." && pwd)"
fixture_dir="$(mktemp -d)"
trap 'rm -r "$fixture_dir"' EXIT
touch "$fixture_dir/github-output"
if ! GITHUB_OUTPUT="$fixture_dir/github-output" ansible-playbook -i localhost, \
    "$repo_dir/tests/test_create_inputs.yml" -e "fixture_dir=$fixture_dir" > "$fixture_dir/results.log" 2>&1; then
    cat "$fixture_dir/results.log"
    exit 1
fi
printf 'Creation port/ID/output checks passed.\n'
