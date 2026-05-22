---
name: naming-clarity
description: Improve names and meaningful values when users ask about variable, method, class, route, file, boolean, unit, status, magic value, enum, constant, or value-object clarity.
argument-hint: "[path|diff|symbol]"
---

# Naming Clarity

Use this skill when code communicates the wrong thing, too little, or too much through names and values.

## Workflow

1. Identify what each unclear name or value actually represents now.
2. Replace transliteration, placeholders, unexplained abbreviations, and misleading plurals.
3. Make booleans read as truth values with names such as `is`, `has`, `can`, or `should`.
4. Encode units, statuses, modes, and meaningful literals through names, enums, value objects, or expressive APIs.
5. Remove redundant words already supplied by class or module context.
6. For vague class names, inspect responsibility before inventing a better suffix.
7. Preserve project naming conventions for routes, files, JSON keys, and directories.

## References

- `references/naming-rules.md`
- `references/SOURCE-MAP.md`
- `examples/naming-values.md`

## Artifact Ownership And Config Policy

- Owns names and value representation only in files requested by the user.
- Does not rename public APIs without checking call sites and compatibility.
