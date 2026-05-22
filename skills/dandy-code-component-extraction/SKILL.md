---
name: dandy-code-component-extraction
description: Identify small, reusable components that can be isolated from a large codebase without prematurely forcing microservices.
argument-hint: "[repository area, module, class, or refactor goal]"
---

# Component Extraction

Use this skill when a user asks how to reduce cognitive load in a large monolith, isolate reusable code, extract a package, or make a subsystem easier to understand.

The output should propose small, testable boundaries with clear responsibilities, not a broad rewrite.

## Workflow

1. Find cohesive code that already behaves like a standalone concept: value objects, formatters with real domain meaning, calculators, adapters, or reusable modules.
2. Check whether extraction reduces cognitive load for the main application.
3. Keep the monolith by default. Extract only components with stable responsibility and minimal coupling.
4. Define the public API, tests, README notes, and ownership for the component before moving code.
5. Prefer package extraction for reusable technical/domain utilities; avoid microservices unless independent deployment and operations are truly needed.
6. Make the first extraction small enough to review and reverse.
7. Preserve integration tests in the host application so the extracted boundary stays compatible.

## References

- [Extraction rules](references/EXTRACTION-RULES.md)
- [Extraction examples](examples/component-extraction.md)

## Artifact Ownership

This skill may read source, tests, dependency manifests, and README files. It may propose or apply extraction edits only when the user asks for implementation. Do not create new repositories or publish packages without explicit approval.

## Config Policy

Use configured artifact language for plans and generated documentation. Keep package, namespace, and API names consistent with the project ecosystem.
