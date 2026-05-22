# Rhythm Rules

- Prefer the ecosystem's accepted formatter over custom taste.
- Automate formatter execution in local tooling, pre-commit hooks, CI, or a fixer step.
- Do not make developers manually fix trailing spaces and brace placement after CI fails.
- Treat blank lines like paragraph breaks.
- Insert a blank line when the reader moves from one completed thought to another.
- Avoid blank lines between every statement in a tight sequence.
- When uncertain, ask whether a short comment could name the preceding block. If yes, a visual break is likely useful.

## Review Language

Use concrete observations:

- "This block mixes lookup, mutation, persistence, and return without visual separation."
- "These blank lines split a single three-step action into disconnected fragments."
- "Run the formatter; this is mechanical style, not a review discussion."
