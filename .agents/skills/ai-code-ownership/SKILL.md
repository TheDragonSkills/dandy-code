---
name: ai-code-ownership
description: Review and reshape coding-assistant output when users ask to check generated code, Copilot or ChatGPT patches, AI-written snippets, missing context, duplicate truth, security risks, or whether the result fits the project.
argument-hint: "[generated-diff|path|prompt]"
---

# AI Code Ownership

Use this skill before accepting generated code into a real project.

## Workflow

1. Treat generated code as a draft, not as owned project code.
2. Re-read nearby classes, paired components, repositories, policies, validators, tests, and style config.
3. Check for context-window misses: paired import/export flows, existing source-of-truth classes, framework conventions, and security boundaries.
4. Check for security and correctness regressions: raw SQL, missing validation, missing error handling, logging sensitive data, and meaningless return values.
5. Rewrite the result into project style and architecture.
6. Add tests that prove the change fits the whole flow, not only the shown snippet.

## References

- `references/ownership-rules.md`
- `references/SOURCE-MAP.md`
- `examples/generated-code-review.md`

## Artifact Ownership And Config Policy

- Owns review findings and requested edits to generated code.
- Do not accept generated code solely because it satisfies the prompt.
