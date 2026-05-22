---
name: comment-curator
description: Improve code comments when users ask about why-comments, stale comments, TODO/HACK/FIXME notes, commented-out code, configuration examples, or whether a comment should become a better name.
argument-hint: "[path|diff]"
---

# Comment Curator

Use this skill when prose inside code helps, lies, or clutters.

## Workflow

1. Read the surrounding code before judging the comment.
2. Delete comments that merely repeat obvious code.
3. Replace explanatory comments with better names when the name can carry the idea.
4. Keep comments that explain why, constraints, historical context, operational caveats, or examples not visible in code.
5. Update comments when behavior changed.
6. Remove commented-out code; version control keeps old implementations.
7. Convert TODO/HACK/FIXME excuses into a fix or a tracked task when possible.
8. Add concrete examples to configuration comments when the expected shape is ambiguous.

## References

- `references/comment-rules.md`
- `references/SOURCE-MAP.md`
- `examples/comment-transformations.md`

## Artifact Ownership And Config Policy

- Owns comments and nearby names only in requested files.
- Does not change behavior except when removing unreachable commented-out code.
