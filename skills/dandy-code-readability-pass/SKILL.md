---
name: dandy-code-readability-pass
description: Improve code readability by tightening formatting, visual grouping, method size, comments, and dead-code removal.
argument-hint: "[file, diff, or code snippet]"
---

# Readability Pass

Use this skill when a user asks for cleaner, more readable code, a style-focused review, or a refactor that preserves behavior.

The output should identify readability blockers and, when editing is requested, apply small behavior-preserving changes.

## Workflow

1. Separate machine-formatting issues from human-structure issues. Formatters handle spacing; the agent handles logical grouping.
2. Group code into visible paragraphs: setup, main action, side effects, and return.
3. Shorten methods by extracting real responsibilities, not by creating private step wrappers with no independent meaning.
4. Remove commented-out code, unreachable code, obsolete names, and justification comments.
5. Keep comments that explain why, constraints, or examples. Remove comments that restate obvious code.
6. Prefer straightforward code over clever compression.
7. Preserve behavior unless the user explicitly asks for a semantic refactor.

## References

- [Readability rules](references/READABILITY-RULES.md)
- [Before/after examples](examples/readability-refactors.md)

## Artifact Ownership

This skill may read and edit source files when the user asks for readability improvements. Do not change formatter configuration, architecture docs, or project rules unless requested.

## Config Policy

If project config defines an artifact language, use it for review notes and generated comments. Keep code identifiers in the project language and naming style.
