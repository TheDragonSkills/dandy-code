---
name: dandy-code-flow-simplifier
description: Simplify control flow with early returns, shallow nesting, explicit conditions, and readable branching.
argument-hint: "[file, diff, or code snippet]"
---

# Flow Simplifier

Use this skill when code has deep nesting, confusing `else` blocks, dense conditions, clever ternaries, assignments inside conditions, or negated boolean logic.

The output should flatten the happy path and make decision points easy to inspect and debug.

## Workflow

1. Identify the primary path and the guard or failure cases.
2. Move guard cases to early `return`, `throw`, `continue`, or `break`.
3. Remove `else` blocks made unnecessary by early exits.
4. Extract complex conditions into named variables or predicate methods when they no longer fit in one glance.
5. Split assignment from condition checks.
6. Prefer positive predicates over negation when the condition appears often.
7. Replace clever nested ternaries or null coalescing chains with straightforward branches.

## References

- [Flow rules](references/FLOW-RULES.md)
- [Simplification examples](examples/flow-refactors.md)

## Artifact Ownership

This skill may read and edit source files when asked to simplify flow. Add or update tests when control-flow changes could affect behavior.

## Config Policy

Use configured artifact language for review output. Keep code syntax and identifiers consistent with the current project.
