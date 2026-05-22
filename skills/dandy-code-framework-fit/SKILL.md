---
name: dandy-code-framework-fit
description: Review whether code works with framework conventions instead of fighting them with unnecessary abstractions, mixed ecosystems, or upgrade-hostile choices.
argument-hint: "[file, diff, architecture note, or dependency decision]"
---

# Framework Fit

Use this skill when a user asks about framework architecture, repositories, custom abstraction layers, mixing libraries from several frameworks, or postponing upgrades.

The output should distinguish useful boundaries from framework resistance and recommend the simplest convention-aligned path.

## Workflow

1. Identify the framework's native mechanism for the problem.
2. Check whether custom abstractions add real variability or only duplicate the framework.
3. Avoid mixing framework ecosystems unless there is a concrete, maintained integration reason.
4. If the team dislikes the framework's style, surface that as a tool-fit decision instead of hiding conflict behind layers.
5. Check whether the code makes future upgrades harder through private copies of features now supported by the ecosystem.
6. Recommend incremental upgrades and dependency freshness when delay would create compounding debt.
7. Keep the advice pragmatic: accept the framework fully or choose another tool.

## References

- [Framework fit rules](references/FRAMEWORK-FIT-RULES.md)
- [Decision examples](examples/framework-fit-examples.md)

## Artifact Ownership

This skill may read source, dependency manifests, and architecture notes. It should not change dependencies, framework versions, or architecture artifacts unless the user explicitly asks.

## Config Policy

Use configured artifact language for recommendations. Keep framework names, package names, and technical terms unchanged unless configured otherwise.
