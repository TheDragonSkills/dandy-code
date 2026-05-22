---
name: dandy-code-value-object-refactor
description: Replace magic values, primitive obsession, nested arrays, fragile references, and scattered conversions with expressive objects or constants.
argument-hint: "[file, diff, or code snippet]"
---

# Value Object Refactor

Use this skill when code is full of unexplained literals, scalar flags, unit conversions, nested arrays, string manipulation chains, or low-level data checks.

The output should recommend the smallest object, enum, constant, or interface that makes the intent obvious without over-engineering.

## Workflow

1. Find literals whose meaning is not obvious from the surrounding code.
2. Decide whether a named constant, enum, library object, or custom value object best removes the magic.
3. Avoid replacing every number with a constant. If the code still exposes mechanical details, hide the operation behind an expressive API.
4. Replace repeated nested-array access with objects that own defaults, validation, and behavior.
5. Prefer immutable transformations and returned values over mutation by reference.
6. Use extension points such as callables or interfaces instead of inheritance when behavior should vary.
7. Keep the refactor narrow and behavior-preserving unless the user asks for a redesign.

## References

- [Primitive replacement rules](references/PRIMITIVE-REPLACEMENT.md)
- [Refactor examples](examples/value-object-patterns.md)

## Artifact Ownership

This skill may read and edit source and test files when the user asks for a refactor. Do not change public contracts without calling out compatibility impact.

## Config Policy

Follow project language and technical-term settings for explanatory text. Keep code examples aligned with the project stack.
