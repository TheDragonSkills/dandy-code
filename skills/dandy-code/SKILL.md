---
name: dandy-code
description: Improve everyday code clarity when writing, reviewing, refactoring, documenting, testing, or modernizing software; use for naming, formatting, control flow, API shape, PHP error handling, framework conventions, maintainability, deletion, upgrades, and human-centered use of coding assistants.
---

# Everyday Code Clarity

Use this skill to make code easier for people to read, trust, change, and
review. The central rule is simple: code is communication. The computer can run
many versions of an idea; teammates need the version that reveals intent with
the least unnecessary translation.

## Operating Mode

1. Read the local context first: entry documentation, directory structure,
   style config, framework conventions, tests, and nearby code.
2. Preserve the project's existing language, architecture, and formatting rules
   unless they actively obscure intent or correctness.
3. Prefer small, intention-revealing changes over broad rewrites.
4. Make the main path easy to scan before making code clever or compact.
5. Use tests, formatters, linters, static analysis, and coverage as feedback.
6. In review, report concrete risks and unclear code, not personal taste.
7. Treat generated code as a draft: understand it, reshape it, and make it fit
   the surrounding system before accepting it.

## Core Rules

- Keep repository entry documentation useful: explain what the project does,
  how to run it, how to test it, where code belongs, and who owns it.
- Use the ecosystem's standard formatter and automate it. Human review should
  focus on behavior, design, and clarity.
- Separate completed thoughts with blank lines, but do not scatter blank lines
  between every statement.
- Use names that tell the truth. Avoid transliteration, vague placeholders,
  unexplained abbreviations, misleading plurals, and generic responsibility
  words when a concrete name exists.
- Make units, statuses, modes, and meaningful literals explicit with names,
  enums, value objects, or expressive APIs.
- Keep methods and classes small enough to understand without a map. Split code
  when the extracted part has its own responsibility, not just to reduce lines.
- Prefer guard clauses, positive conditions, explicit assignments, and named
  predicates over deep nesting, dense ternaries, and hidden work in conditions.
- Keep method arguments few. Put optional arguments last, avoid scalar bundles,
  and use objects, named arguments, or fluent APIs when configuration grows.
- Never catch and forget errors. Either handle them intentionally or log enough
  context for future diagnosis.
- Write comments for why, constraints, examples, and context the code cannot
  express clearly. Delete stale comments and commented-out code.
- Make tests the first client of the code. Favor isolated unit tests for core
  behavior, then add higher-level tests for integration boundaries and flows.
- Work with the chosen framework instead of fighting it. Use its conventions
  unless the project has a strong, explicit reason not to.
- Keep dependencies, frameworks, and language versions moving while the gap is
  small. "It still works" is not a maintenance strategy.
- When using coding assistants, provide context, check paired components,
  remove duplicated sources of truth, and rewrite the result until it feels
  owned by the project.

## References

Read only the reference needed for the current task:

- `references/readability-rules.md` for naming, formatting, flow, arguments,
  comments, and everyday refactoring checks.
- `references/php-and-framework-practices.md` for PHP-specific exception,
  logging, object, extension, and framework guidance.
- `references/testing-and-maintenance.md` for test design, deletion,
  modernization, and coding-assistant review.
- `references/review-checklist.md` for a compact review checklist.
