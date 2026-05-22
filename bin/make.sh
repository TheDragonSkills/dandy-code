#!/usr/bin/env sh
set -eu

codex "\$aif-distillation book/content --split --path skills --redact-source-map --name dandy-code"
