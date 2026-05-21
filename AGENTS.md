# AGENTS.md

## Project Purpose

This repository adapts a Markdown book from an external Git repository into reusable AI agent skills.

The current source book is available as the `book/` git submodule:

- source path: `book/`
- canonical content path: `book/content/`
- source repository: `git@github.com:tabuna/dandy-code.git`

The main generated output is expected to live outside the submodule, normally under `skills/dandy-code/`.

## Skill Workflow

For tasks that create, recreate, update, regenerate, review, or improve a skill from the Markdown book, use the local skill:

- `.agents/skills/create-skill-from-book/SKILL.md`

That skill owns the detailed extraction workflow, generated skill shape, content rules, traceability expectations, and quality gate.

## Source Boundaries

- Use only Markdown files from `book/content/` as canonical source material for generated skill content.
- Ignore `book/draft/` completely.
- Do not edit files under `book/` unless the task explicitly asks to update the source book or submodule.
- Generated skill files must live outside `book/`.

## Repository Boundaries

- Keep generated artifacts deterministic where practical.
- If build scripts are added, they should read from `book/content/` and write to the intended skill output directory.
- Do not commit generated PDFs, temporary renders, caches, or local editor files unless they are intentionally part of the project.
- If you introduce commands, document them in the project README or an appropriate docs file.

## Git And Safety

- The `book/` directory is a submodule; avoid accidental source changes there.
- Check `git status` before and after edits.
- Do not discard user changes.
- Keep commits focused on the converter, generated skill structure, or documentation.
