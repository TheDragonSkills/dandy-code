---
name: php-error-handling
description: Review and improve PHP error handling when users ask about exceptions, RuntimeException vs Exception, empty catches, fallback behavior, logging, clear error messages, monitoring, or debugging-heavy code.
argument-hint: "[path|diff]"
---

# PHP Error Handling

Use this skill when failures are hidden, vague, over-caught, or hard to diagnose.

## Workflow

1. Find catch blocks, thrown exceptions, fallback paths, logs, and debugging hotspots.
2. Classify failures as expected recoverable errors or invalid runtime state.
3. For recoverable failures, preserve the fallback only when useful context is logged.
4. For invalid state, throw a specific exception with identifiers that help diagnosis.
5. Use the project's logging system and levels instead of ad hoc files.
6. If step-through debugging is required to understand normal behavior, propose smaller rules and tests.

## References

- `references/error-rules.md`
- `references/SOURCE-MAP.md`
- `examples/error-handling.md`

## Artifact Ownership And Config Policy

- Owns exception and logging changes in requested files.
- Do not change production logging destinations without explicit user approval.
