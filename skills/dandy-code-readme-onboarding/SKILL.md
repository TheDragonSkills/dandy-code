---
name: dandy-code-readme-onboarding
description: Review and improve repository README files so a new developer can understand, install, test, navigate, and find ownership quickly.
argument-hint: "[README path or repository root]"
---

# README Onboarding

Use this skill when a user asks to create, review, or improve project onboarding documentation, especially a repository README.

The output should be a concise review or patch that makes the project understandable to someone opening it for the first time.

## Workflow

1. Inspect the README and nearby project files for actual commands, structure, test tooling, environments, and ownership signals.
2. Check whether the README answers five onboarding questions: what the project does, how to install it, how to run it, how to test it, and who owns it.
3. Prefer verified commands over aspirational prose. If a command cannot be verified, mark it as an assumption.
4. Document directory structure as a team contract, not as decoration. Explain where new code belongs.
5. Add links to deeper docs only when the README still gives enough first-run context.
6. Keep the result practical and short; remove marketing, empty template text, and outdated fragments.

## References

- [Checklist](references/CHECKLIST.md)
- [README patterns](examples/readme-patterns.md)

## Artifact Ownership

This skill may read repository files and write README or onboarding documentation only when the user asks for an edit. Treat architecture, roadmap, CI, and ownership files as read-only context unless the user explicitly asks to change them.

## Config Policy

If `.ai-factory/config.yaml` exists, follow its configured artifact language for generated documentation. Keep technical terms unchanged unless the project config says otherwise.
