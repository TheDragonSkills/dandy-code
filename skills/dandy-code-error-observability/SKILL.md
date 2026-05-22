---
name: dandy-code-error-observability
description: Review error handling, logging, exception clarity, and debugging seams so failures stay visible and testable.
argument-hint: "[file, diff, log flow, or code snippet]"
---

# Error Observability

Use this skill when code catches exceptions, suppresses failures, logs inconsistently, reports vague errors, or requires step debugging to understand behavior.

The output should preserve visibility into failures and make the code easier to test without an interactive debugger.

## Workflow

1. Find catch blocks and error branches. Verify every caught failure is handled, rethrown, or logged with context.
2. Reject empty catches and silent fallback paths.
3. Improve exception messages with the relevant entity, identifier, state, and operation.
4. Prefer a centralized PSR-3-style logger or project logging abstraction over ad hoc files.
5. Check log lifecycle: levels, structured context, rotation, aggregation, and alerting for production failures.
6. If understanding requires step debugging, recommend extracting rules or decision objects that can be unit tested.
7. Add or propose tests around failure paths and rule boundaries.

## References

- [Error and logging rules](references/ERROR-RULES.md)
- [Observability examples](examples/error-examples.md)

## Artifact Ownership

This skill may read and edit source and tests when asked to fix error handling. Do not change production logging infrastructure without explicit user approval.

## Config Policy

Use configured artifact language for review notes and generated messages where appropriate. Keep exception class names and logger API names aligned with the project stack.
