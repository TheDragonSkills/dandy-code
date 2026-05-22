---
name: dandy-code-naming-review
description: Review and improve names for variables, methods, classes, files, routes, booleans, units, and paired operations.
argument-hint: "[file, diff, or code snippet]"
---

# Naming Review

Use this skill when a user asks whether names are clear, requests renaming help, or shares code with vague, misleading, mixed-language, or inconsistent identifiers.

The output should propose concrete names and explain the decision rule behind each important rename.

## Workflow

1. Identify names that force readers to inspect implementation: abbreviations, generic words, mixed languages, misleading plurality, and vague `-er` roles.
2. Check boolean names for positive, predicate-shaped meaning: `is`, `has`, `can`, or `should`.
3. Check units and scales. Encode units in names or move them into value objects.
4. Shorten names when context already supplies the noun.
5. Make paired operations sound like pairs: `start/finish`, `begin/complete`, `open/close`.
6. Verify that names tell the truth about cardinality, side effects, and returned values.
7. Apply the repository's naming convention for routes, translation keys, files, and folders.

## References

- [Naming rules](references/NAMING-RULES.md)
- [Rename examples](examples/rename-examples.md)

## Artifact Ownership

This skill may read source files and propose or apply renames when requested. Treat broad naming conventions and project rules as read-only unless the user explicitly asks to update them.

## Config Policy

Generated review text follows project artifact language when configured. Identifier suggestions should match the dominant language and framework conventions in the codebase.
