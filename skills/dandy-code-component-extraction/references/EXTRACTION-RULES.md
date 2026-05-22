# Extraction Rules

## Default to a Better Monolith

A large monolith is not automatically bad. First improve internal boundaries, README guidance, tests, and directory structure.

Extract when the component:

- has one clear responsibility
- has few dependencies on application state
- can be tested independently
- is useful in more than one place or can reduce the host application's mental load
- has a stable public API

## Avoid Extraction Theater

Do not extract:

- code that changes every time the host feature changes
- code that needs most of the application container to run
- a random folder just because it is large
- a service boundary without operational need
- a package with no README, tests, or owner

## Package Boundary Checklist

- Public API is small and documented.
- Internal classes are hidden or clearly marked.
- Tests cover the component without booting the whole application.
- Host integration tests cover compatibility.
- Versioning and dependency constraints are clear.
- Ownership is explicit.

## Career and Team Signal

Small reusable packages can make code easier to inspect, discuss, and maintain. They also force cleaner ownership because the component must explain itself outside the surrounding application.
