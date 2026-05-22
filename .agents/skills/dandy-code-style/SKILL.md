---
name: dandy-code-style
description: Route practical code-clarity work to focused skills for onboarding docs, formatting rhythm, naming, control flow, PHP error handling, testability, framework fit, and generated-code ownership.
argument-hint: "[path|diff|topic]"
---

# Dandy Code Style Router

Use this as an index when the request is broad, such as "improve code clarity",
"review this for style", or "apply dandy-code-style".

## Route By Task

- Use `repo-onboarding` for README content, run/test/seed instructions, directory structure, ownership, and large-repository entry points.
- Use `formatting-rhythm` for formatter adoption, mechanical style, blank lines, and logical block spacing.
- Use `naming-clarity` for names, booleans, units, magic values, enums, value objects, and truthful APIs.
- Use `control-flow-simplifier` for early exits, condition cleanup, argument shape, method size, tell-don't-ask, and extension points.
- Use `php-error-handling` for exceptions, logging, recoverable failures, clear error messages, and debugging pain.
- Use `comment-curator` for comments, stale TODO/HACK/FIXME notes, commented-out code, and examples in configuration comments.
- Use `testability-maintenance` for unit-test focus, AAA, test independence, coverage, deletion confidence, and modernization.
- Use `framework-fit` for framework conventions, avoiding duplicate abstraction layers, and tool-fit decisions.
- Use `ai-code-ownership` for reviewing coding-assistant output before accepting it into a project.

## Operating Rule

For broad work, run the smallest set of child skills that cover the current risk. Do not apply every child by default.

## References

- `references/SOURCE-MAP.md` for the split boundary map and full source coverage.
- `examples/REQUESTS.md` for routing examples.

## Artifact Ownership And Config Policy

- This router does not own project artifacts.
- Child skills own only the files directly requested by the user or required by the active coding task.
- Treat `.ai-factory/config.yaml` and project planning artifacts as read-only unless the user explicitly asks to update them.
