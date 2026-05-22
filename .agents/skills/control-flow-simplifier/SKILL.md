---
name: control-flow-simplifier
description: Simplify code structure when users ask about early returns, nested conditions, else blocks, complex predicates, assignments in conditions, argument lists, method size, tell-don't-ask, or extension points.
argument-hint: "[path|diff|method]"
---

# Control Flow Simplifier

Use this skill when the code works but the reader has to simulate too much.

## Workflow

1. Locate the main path and the edge cases.
2. Move rejection cases to the top with `return`, `throw`, `continue`, or `break`.
3. Remove `else` after exits.
4. Pull complex conditions into named variables, predicates, or query methods.
5. Separate assignment from conditions.
6. Reduce argument lists with named arguments, objects with behavior, or fluent APIs.
7. Split large methods only when the extracted part owns a real decision or responsibility.
8. Prefer telling objects what to do over asking for data and deciding elsewhere.
9. Add extension points with callbacks or strategies before reaching for inheritance.

## References

- `references/flow-rules.md`
- `references/SOURCE-MAP.md`
- `examples/flow-transformations.md`

## Artifact Ownership And Config Policy

- Owns local refactoring in files requested by the user.
- Preserve behavior unless the user explicitly asks for behavior changes.
