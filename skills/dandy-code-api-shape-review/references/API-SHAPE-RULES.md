# API Shape Rules

## Parameter Count

Use the rule of three as a review trigger. A method with four or more parameters often hides multiple concepts or missing objects.

## Optional Parameters

Required parameters should come first. Optional behavior belongs at the end so common calls stay short.

## Option Bags

Associative arrays are weak APIs:

- keys are not discoverable
- types are not enforced
- typos fail late
- callers must inspect implementation or docs

Use them only at framework boundaries or when the project has a strong schema convention.

## Boolean Flags

A boolean argument is acceptable when it tweaks a small local option and the call site is clear. Split the method when the flag selects a materially different behavior.

## Fluent Interfaces

Use a fluent interface when a call has several independent optional settings and the sequence reads like configuration.

Avoid fluent APIs when they hide required state or make invalid orderings possible.

## Prefer Objects

When several scalar parameters represent one thing, pass the thing:

- pass `Model $model` instead of model name, key name, and key value
- pass `Money $price` instead of amount and currency
- pass `DateRange $range` instead of start and end strings
