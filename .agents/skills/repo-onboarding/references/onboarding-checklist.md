# Onboarding Checklist

## Required Reader Questions

- What does the project do, in a few concrete sentences?
- How do I install dependencies?
- How do I run the project locally or access a development environment?
- How do I create useful test data without manual clicking?
- How do I run all tests and focused test suites?
- Where do common kinds of code belong?
- Who maintains the project or module?
- Where are API docs, CI details, coverage reports, or deployment notes?

## Directory Structure Rules

- Name directories consistently across modules.
- Avoid parallel aliases such as `cfg`, `conf`, `config`, and `etc` unless the distinction is documented.
- Explain non-obvious folders with one-line descriptions.
- If teams cannot agree on a shared directory language, surface that as an architecture ownership problem.

## Large Repository Rules

- A large monolith is acceptable when its internal boundaries are clear.
- Extract reusable components only when they have an independent responsibility, tests, and documentation.
- Do not split a repository just to reduce file count. Split to reduce cognitive load and clarify ownership.

## Maintainer Rules

- List responsible people, teams, or CODEOWNERS links.
- Treat ownership as an integration point, not a blame mechanism.
- Mark archived or maintenance-only areas explicitly.
