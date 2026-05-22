# README Onboarding Checklist

## First Impression

- The first paragraph says what the project does and why it exists.
- The README is not an empty template, a single title, or a link farm.
- The tone is operational: enough context to start work, no marketing filler.

## Required Sections

| Section | Good README answers |
| --- | --- |
| Project description | What problem the project solves, main interfaces, and relevant product context. |
| Install and run | Exact dependency installation and local or test-environment startup commands. |
| Seed or reset data | How to create realistic development data without manual clicking. |
| Testing | Test types, command examples, and prerequisites. |
| Directory structure | Where major kinds of code live and where new work belongs. |
| Ownership | Maintainer names, team/channel, CODEOWNERS link, or archived status. |

## Review Heuristics

- Commands must be copy-pasteable and current.
- If local startup is impossible, the README must explain how to get a personal dev stand or shared staging access.
- Directory descriptions should prevent "where should I put this?" questions.
- Large repositories should expose a consistent vocabulary for directories across teams.
- Ownership information should identify the decision point, not every historical contributor.

## Failure Modes

- "Run tests" is mentioned without actual commands.
- Test data setup is omitted, forcing developers to create fake records by hand.
- The structure section lists folders but does not explain their responsibilities.
- Maintainers are hidden in chat memory or tribal knowledge.
- README duplicates stale details that should link to generated API, CI, or coverage reports.
