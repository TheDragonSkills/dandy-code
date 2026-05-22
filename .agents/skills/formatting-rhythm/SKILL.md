---
name: formatting-rhythm
description: Apply formatting and visual rhythm guidance when users ask about code style, formatter setup, whitespace, blank lines, readable grouping, or reducing mechanical review noise.
argument-hint: "[path|diff]"
---

# Formatting Rhythm

Use this skill when the problem is how code looks and scans, not what it does.

## Workflow

1. Identify the project's formatter and style standard.
2. Separate machine-fixable issues from human readability issues.
3. Recommend formatter automation for mechanical spacing, braces, line breaks, and indentation.
4. Use blank lines to separate complete thoughts: setup, transformation, persistence, logging, and return.
5. Remove excessive blank lines that fragment one logical sequence.
6. Verify with the formatter or explain why it was not run.

## References

- `references/rhythm-rules.md`
- `references/SOURCE-MAP.md`
- `examples/breathing.md`

## Artifact Ownership And Config Policy

- Owns formatter configuration or code layout only when directly requested.
- Does not change behavior.
