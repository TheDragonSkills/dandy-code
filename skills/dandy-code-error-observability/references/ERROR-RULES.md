# Error and Logging Rules

## Exception Types

- Use planned, recoverable exception types for errors callers are expected to handle.
- Use runtime-style exceptions for invalid state, API misuse, and unexpected failures.
- Be consistent with the project's language and framework conventions.

## Never Catch and Forget

An exception must not disappear. A catch block should do at least one of:

- rethrow
- wrap with clearer context
- log with structured context
- return a fallback while logging why the fallback happened

## Clear Messages

Messages should answer:

- what operation failed
- which entity or identifier was involved
- what state made it invalid
- what external service or dependency was involved

## Logging

Prefer a single logging abstraction with levels and structured context. Avoid random `file_put_contents` logs with incompatible formats.

Production logs need rotation and aggregation. Critical failures need alerting, not just files on disk.

## Debugging Signal

If an agent or developer must step through every line to understand behavior, the code likely lacks boundaries. Extract rules into small objects and test them directly.
