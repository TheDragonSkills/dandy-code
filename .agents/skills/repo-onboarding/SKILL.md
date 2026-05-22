---
name: repo-onboarding
description: Improve repository onboarding when users ask for README help, project entry documentation, run/test/seed instructions, directory structure, maintainer ownership, or making a large codebase easier to enter.
argument-hint: "[repo-path|README|docs]"
---

# Repo Onboarding

Use this skill to make the first minutes in a repository predictable.

## Workflow

1. Read the README, root files, package/build files, test config, and directory structure.
2. Check whether a newcomer can answer: what this project does, how to install it, how to run it, how to seed/reset data, how to test it, where new code belongs, and who owns it.
3. Prefer short, verified commands over prose promises.
4. For large repositories, expose stable entry points and module boundaries instead of forcing readers to discover everything by search.
5. Add or revise only the documentation and structure notes requested by the user.
6. Verify commands when feasible; otherwise mark them as unverified.

## References

- `references/onboarding-checklist.md`
- `references/SOURCE-MAP.md`
- `examples/readme-outline.md`

## Artifact Ownership And Config Policy

- Owns README and explicitly requested onboarding documentation changes.
- Reads project configuration and directory structure as context.
- Does not edit source code unless the user asks for structural cleanup.
