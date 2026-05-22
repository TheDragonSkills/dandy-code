---
name: framework-fit
description: Check framework alignment when users ask whether code is fighting framework conventions, adding unnecessary repositories/services/adapters, mixing framework ecosystems, or choosing the wrong tool for the project.
argument-hint: "[path|diff|architecture-question]"
---

# Framework Fit

Use this skill when custom architecture may be duplicating or resisting the selected framework.

## Workflow

1. Identify the framework and its standard mechanism for the problem.
2. Compare the custom layer with the framework feature it wraps.
3. Keep custom abstraction only when it adds a real boundary, switches implementations, isolates volatility, or expresses domain behavior.
4. Remove or challenge ceremony layers that only hide a standard framework API.
5. Avoid mixing framework pieces unless the project owns and documents the integration.
6. If the tool does not fit the team or task, surface that honestly rather than building workarounds forever.

## References

- `references/framework-rules.md`
- `references/SOURCE-MAP.md`
- `examples/framework-fit.md`

## Artifact Ownership And Config Policy

- Owns architecture recommendations and requested code changes.
- Does not replace frameworks or dependencies without explicit user approval.
