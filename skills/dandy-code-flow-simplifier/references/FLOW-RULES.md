# Flow Rules

## Early Exit

Handle exceptional, invalid, empty, or irrelevant cases first. Then let the main scenario continue at the base indentation level.

Good uses:

- `return false` for failed preconditions
- `throw` for invalid state
- `continue` for irrelevant loop items
- `break` when a loop condition becomes false after inspection

## Avoid Unnecessary Else

When an `if` branch returns or throws, the following code does not need `else`.

## Complex Conditions

Move complex conditions into:

- a named local variable for one local use
- a predicate method when reused or when it hides a query
- a query builder method when debugging counts or result sets matters

## Debuggability

Avoid packing expensive queries, comparisons, and loops inside a `while` or `if` condition. Assign them first so they can be logged, tested, or inspected.

## No Clever Assignments

Do not assign inside `if`, `while`, or ternary expressions unless the language idiom is unavoidable and locally accepted. Separate the assignment from the decision.

## Positive Conditions

Negation adds mental inversion. Prefer explicit methods like `isInactive()` when the negative case is common.
