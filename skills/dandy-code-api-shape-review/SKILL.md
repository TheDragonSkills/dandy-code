---
name: dandy-code-api-shape-review
description: Review method and object APIs for argument count, option shape, boolean flags, object parameters, and fluent configuration.
argument-hint: "[file, diff, or code snippet]"
---

# API Shape Review

Use this skill when a user asks whether method signatures, constructors, service APIs, or call sites are easy to use and hard to misuse.

The output should flag confusing call shapes and propose clearer signatures or call patterns.

## Workflow

1. Count parameters. Treat more than three as a design smell unless the language or framework convention clearly allows it.
2. Move optional parameters to the end.
3. Reject associative-array option bags when expected keys and types are not explicit.
4. Use named arguments only for a small number of rare options in languages where they are idiomatic.
5. Replace many configuration parameters with a fluent builder or dedicated command object when it improves call-site clarity.
6. Challenge boolean flags that split one method into two different behaviors.
7. Prefer passing objects that own identity and behavior over passing several scalar fragments of the same concept.

## References

- [API shape rules](references/API-SHAPE-RULES.md)
- [Signature examples](examples/api-shape-examples.md)

## Artifact Ownership

This skill may read source files and propose or apply signature changes when requested. Call out public API and backward-compatibility risks before changing exposed contracts.

## Config Policy

Use project artifact language for review notes. Keep code examples in the repository's primary language unless the user requests otherwise.
