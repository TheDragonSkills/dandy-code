# AGENTS.md

## Project Purpose

This repository maintains a distributable LLM agent skill generated from a Markdown book.

## Workflow Entry Point

For tasks that create, recreate, update, regenerate, review, or improve the book-derived skill, use:

- `.agents/skills/create-skill-from-book/SKILL.md`

That local skill owns the source paths, output paths, extraction rules, distribution constraints, validation checks, and quality gate.

## Safety

- Check `git status` before and after edits.
- The `book/` directory is a git submodule; do not edit it unless the task explicitly asks to update the source book or submodule.
- Do not discard user changes.
- Keep commits focused on the generator skill, generated skill package, converter scripts, or repository documentation.
- Do not commit generated PDFs, temporary renders, caches, or local editor files unless they are intentionally part of the project.
