# AI Review Rules

## AI Continues the Road It Sees

Generated code often copies the style and assumptions in the provided snippet. If the input is a large, mixed-responsibility function, the output may add another responsibility instead of creating a boundary.

## Context Window Risk

AI can miss parts of the system outside the prompt:

- a repository that already owns persistence
- an exporter that defines the shape an importer must consume
- a value object that should own validation
- a test helper or framework feature already in use
- an established error or logging convention

Review beyond the edited file when the change touches a contract.

## Security and Reliability Gate

Check generated code for:

- raw SQL or shell interpolation
- missing validation and escaping
- silent exception handling
- ad hoc logging of sensitive data
- duplicate sources of truth
- hidden state mutation
- missing tests for the new behavior

## Make It Yours

Do not accept generated code that the developer cannot explain. Rewrite names, boundaries, and tests until it fits the codebase and is understandable without the original prompt.

## Good Review Output

Lead with concrete findings. Include file and line references when available. State the broken contract, risk, and a specific correction.
