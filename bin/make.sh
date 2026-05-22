#!/usr/bin/env sh
set -eu

script_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
repository_root=$(dirname "$script_dir")

cd "$repository_root"

codex "\$aif-distillation book/content --split --path skills --redact-source-map --name dandy-code"
