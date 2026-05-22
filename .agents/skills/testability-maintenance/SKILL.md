---
name: testability-maintenance
description: Improve maintainability through tests when users ask about unit tests, AAA, test structure, random order, coverage, sleep in tests, deleting stale code, refactoring confidence, or keeping dependencies current.
argument-hint: "[path|diff|test-target]"
---

# Testability Maintenance

Use this skill when the project needs confidence to change, delete, refactor, or modernize code.

## Workflow

1. Identify the core behavior and the boundary behavior.
2. Put business decisions into isolated units before relying on broad feature tests.
3. Write tests as the first client of the code.
4. Structure tests with visible Arrange, Act, and Assert phases.
5. Keep test setup close to the test.
6. Check independence with random order when coupling is suspected.
7. Use coverage to find unexecuted branches.
8. Replace fixed sleeps with fakes, synchronous execution, or condition waits.
9. Use tests to support deletion, renaming, and dependency upgrades.

## References

- `references/maintenance-rules.md`
- `references/SOURCE-MAP.md`
- `examples/tests-maintenance.md`

## Artifact Ownership And Config Policy

- Owns tests and maintenance changes directly requested by the user.
- Does not update dependencies without explicit approval.
