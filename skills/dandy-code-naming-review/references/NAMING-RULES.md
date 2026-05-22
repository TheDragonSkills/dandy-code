# Naming Rules

## Prefer Concrete English Identifiers

- Avoid transliteration and mixed-language names when the framework, libraries, and ecosystem use English.
- Avoid abbreviations unless they are a local standard or universally understood in the domain.
- Avoid names like `data`, `info`, `item`, `value`, `manager`, and `handler` when the surrounding context does not make them precise.

## Boolean Names

Boolean variables and methods should read as predicates:

- `isAdmin`
- `hasAccess`
- `canExport`
- `shouldRetry`

Avoid names that could mean either an object or a flag:

- `admin`
- `retry`
- `access`

## Units and Measures

Numbers need units when ambiguity is plausible:

- `temperatureInCelsius`
- `timeoutInSeconds`
- `sizeInBytes`

When unit logic spreads, prefer a value object over longer variable names.

## Context Removes Repetition

Inside `PostCollection`, prefer:

- `add(Post $post)`
- `has(Post $post)`
- `clear()`

Avoid:

- `addPost`
- `hasPost`
- `clearPost`

## Trustworthy Names

Names must not lie:

- plural names should accept or return multiple values
- method names should match side effects
- `get*` should not save, send, mutate, or throw for normal control flow
- route and file names should follow one convention across the project

## Vague Actor Suffixes

Names ending in `Manager`, `Handler`, `Processor`, `Formatter`, or `Controller` often hide responsibility. Keep framework-required names, but for domain classes ask: "What concrete result does this object produce?"
