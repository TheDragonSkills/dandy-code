---
name: dandy-code-ai-code-review
description: Review AI-assisted code changes for continuation bias, missing context, architectural asymmetry, security gaps, and code ownership.
argument-hint: "[diff, generated code, prompt, or file set]"
---

# AI Code Review

Use this skill when a user asks to review code produced or modified by an AI assistant, or when an implementation may have been generated from too little context.

The output should verify that the change fits the surrounding system instead of merely continuing the local style.

## Workflow

1. Inspect the prompt or stated task when available, then inspect the surrounding code that defines the real contract.
2. Look for continuation bias: the AI may extend unsafe, procedural, or messy code instead of challenging it.
3. Check security basics the generated patch may have ignored: injection, validation, auth boundaries, error handling, and secret exposure.
4. Verify architectural context: existing repositories, services, value objects, events, tests, and conventions.
5. Check symmetry across paired flows such as import/export, encode/decode, create/delete, send/receive.
6. Ask whether the developer can explain and own the result. If not, rewrite into project style and add tests.
7. Prefer small corrections and explicit review findings over broad rewrites unless the generated code is structurally unsafe.

## References

- [AI review rules](references/AI-REVIEW-RULES.md)
- [Review examples](examples/ai-review-examples.md)

## Artifact Ownership

This skill may read source, diffs, tests, and prompts supplied by the user. It may edit code when asked to fix findings. Treat private prompts, logs, and credentials as sensitive.

## Config Policy

Use configured artifact language for review findings. Keep code, framework, and security terminology unchanged unless configured otherwise.
