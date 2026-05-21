---
name: dandy-code
description: Apply Dandy Code guidance when writing, reviewing, refactoring, documenting, testing, or improving code for human readability, team consistency, PHP/Laravel quality, clean naming, maintainable control flow, useful tests, README quality, framework-aligned design, or safer AI-assisted coding.
---

# Dandy Code

Use this skill to make code look and feel cared for: readable, predictable,
team-friendly, and easy to change. The guidance is derived from the Dandy Code
book, but this skill is operational rather than literary: apply it directly
while coding, reviewing, refactoring, testing, or explaining code.

The central rule is simple: code is communication. The computer will execute
many versions of the same idea; people need the version that reveals intent
quickly and leaves fewer questions behind.

## Operating Mode

1. Read the local context first: README, directory structure, style config,
   framework conventions, tests, and nearby code.
2. Preserve the project's existing language, architecture, and formatting rules
   unless they actively damage readability or correctness.
3. Prefer small, intention-revealing changes over broad rewrites.
4. Make code easier to scan before making it cleverer.
5. Use tests, formatters, linters, and static analysis as the feedback loop.
6. In review, report concrete risks and unclear code, not personal taste.

## Core Rules

- Treat README quality as part of code quality: a repository should explain what
  it does, how to run it, how to test it, where code belongs, and who owns it.
- Use the formatter and the ecosystem's standard style. Do not spend human
  review time on spacing, braces, or import order when a tool can settle it.
- Let code breathe: separate completed thoughts with blank lines, but do not
  scatter blank lines between every statement.
- Use names that tell the truth. Avoid transliteration, vague placeholders,
  unexplained abbreviations, misleading plurals, and generic responsibility
  words when a concrete name exists.
- Replace meaningful magic literals with named concepts, enums, value objects,
  or expressive APIs. Do not replace every literal with a pile of constants when
  a better abstraction removes the detail entirely.
- Keep methods and classes small enough to understand without a map. Splitting
  code is useful only when the extracted piece has its own real responsibility.
- Prefer early returns, positive conditions, explicit assignments, and named
  predicates over deep nesting, dense ternaries, and hidden work inside
  conditions.
- Keep method arguments few. Put optional arguments last, avoid bundles of
  scalars, and use objects, named arguments, or fluent APIs when configuration
  grows.
- Never catch and forget errors. Either handle them intentionally or log enough
  context for future diagnosis.
- Write comments for why and context, not for what the next line already says.
  Delete stale comments, commented-out code, and temporary excuses.
- Tests are the first client of the code. Favor isolated unit tests for core
  behavior, then add higher-level tests for integration boundaries and user
  flows.
- Work with the chosen framework instead of fighting it. Use its conventions
  unless the project has a strong, explicit reason not to.
- Keep dependencies, frameworks, and language versions moving while the gap is
  small. "It still works" is not a maintenance strategy.
- Treat AI-generated code as a draft. Verify context, symmetry, ownership
  boundaries, security, tests, and fit with the surrounding system.

## References

Read only the reference needed for the current task:

- `references/readability-rules.md` for naming, formatting, flow, arguments,
  comments, and everyday refactoring checks.
- `references/php-and-framework-practices.md` for PHP-specific exception,
  logging, object, extension, and framework guidance.
- `references/testing-and-maintenance.md` for test design, deletion,
  modernization, and refactoring confidence.
- `references/review-checklist.md` for a compact review checklist.
