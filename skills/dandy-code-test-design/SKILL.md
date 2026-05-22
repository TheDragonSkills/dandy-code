---
name: dandy-code-test-design
description: Design and review tests that drive clean code through unit focus, clear setup, independence, coverage awareness, and deterministic async checks.
argument-hint: "[file, diff, test suite, or behavior description]"
---

# Test Design

Use this skill when a user asks how to test code, review a test suite, improve flaky tests, or make code easier to test.

The output should favor fast, isolated tests that reveal behavior and improve design.

## Workflow

1. Identify the smallest meaningful behavior to test directly.
2. Prefer unit tests for domain logic and keep feature or end-to-end tests as a thin confidence layer.
3. Structure tests as Arrange, Act, Assert.
4. Keep setup close to the test. Avoid global fixtures whose purpose is invisible.
5. Check that tests are independent and can run in random order.
6. Use coverage to find unexecuted branches, but do not treat coverage as proof of quality.
7. Remove fixed `sleep()` calls. Use fakes, synchronous execution, or wait-for-condition helpers.
8. Add symmetry tests when two components form a round trip, such as export/import.

## References

- [Testing rules](references/TESTING-RULES.md)
- [Test examples](examples/test-patterns.md)

## Artifact Ownership

This skill may read and edit test and source files when the user asks for test implementation. It may suggest test commands but should not change CI configuration unless requested.

## Config Policy

Use project artifact language for test plans and review notes. Keep test code in the repository's established framework and style.
