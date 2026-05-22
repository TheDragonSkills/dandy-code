# Flow Rules

## Early Exit

- Handle invalid or uninteresting cases first.
- Keep the normal scenario at the outer indentation level.
- Use `continue` inside loops to skip non-matching items.
- Avoid `else` after `return`, `throw`, `continue`, or `break`.

## Conditions

- Do not hide queries, assignments, or multi-step calculations in condition headers.
- Name complex predicates.
- Prefer positive condition names when repeated negation makes code harder to read.
- Expand dense ternary or coalescing chains when branch behavior is not obvious.

## Method Shape

- Large methods should be split by responsibility, not line count alone.
- Public methods should represent coherent high-level actions.
- Private methods should encapsulate a useful decision or transformation.
- Avoid fake extraction that merely forces readers to jump through `step1`, `step2`, and `finish`.

## Arguments

- Treat more than three arguments as a smell.
- Put optional arguments at the end.
- Split boolean flags when they create two different operations.
- Use named arguments for small option sets.
- Use fluent APIs or domain objects when configuration grows.

## Extension

- Do not default to inheritance for small behavior variation.
- Prefer a callback, strategy object, or interface when the behavior is meant to vary.
