# Dandy Code Skill

> Convert the Dandy Code book into practical AI-agent guidance for writing, reviewing, and refactoring code.

This repository adapts the Markdown book [Dandy Code](https://github.com/tabuna/dandy-code) by Alexandr Chernyaev into a
reusable agent skill. The source book is kept as a git submodule, while generated skill files are expected to live
outside the submodule.

## Quick Start

```shell
npx skills add https://github.com/TheDragonCode/dandy-code-skill
```

## Key Features

- **Book-to-skill workflow** - turns long-form Markdown chapters into concise, agent-facing instructions.
- **Source boundary protection** - treats `book/content/` as canonical and leaves `book/draft/` out of generated output.
- **Traceable extraction** - keeps generated guidance tied back to source chapters where practical.
- **Agent-ready output** - targets a compact `SKILL.md` plus focused references instead of copying the book wholesale.
- **Deterministic structure** - uses stable source ordering and predictable output paths.

## License

This package is licensed under the [MIT License](LICENSE.md).
