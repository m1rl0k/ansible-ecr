#!/usr/bin/env bash
set -e

source "$(dirname "$0")/build_and_push_common.sh"

build_and_push_image "my-mssql" "Dockerfile.mssql"   