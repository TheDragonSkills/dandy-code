# Readability Rules

## Formatting

- Prefer established formatters and coding standards over personal taste.
- Do not spend review comments on whitespace that a formatter can fix.
- CI should verify formatting, but local tooling should be able to fix it automatically.

## Code Breathing

Use blank lines to separate completed thoughts:

- input or lookup
- transformation
- persistence or side effect
- return

Avoid blank lines between every statement. Dense sequences that form one thought should stay together.

## Method Size

A good method passes responsibility quickly. It should have a coherent purpose visible at a glance.

Avoid:

- large methods that mix loading, validation, transformation, output, and notification
- fake extraction where a public method becomes a list of `stepOne()`, `stepTwo()`, `doStuff()`
- code that asks external objects for data and then makes decisions that belong inside those objects

Prefer:

- objects that receive intent: `$user->canExport($document)`
- public methods that represent a complete business operation
- private methods that hide a meaningful sub-decision or reusable operation

## Comments

Good comments explain:

- why a surprising value exists
- external constraints
- examples for configuration
- tradeoffs that are not visible in code

Bad comments:

- translate obvious syntax
- excuse temporary hacks
- contradict current behavior
- preserve removed code that version control already stores

## Deletion

Delete commented-out code, unreachable code, and obsolete names. If removal feels risky, add or run tests instead of leaving code debris.
