# Dandy Code Skill

AI agent skill based on the book [**Dandy Code**](https://github.com/tabuna/dandy-code) written by Alexandr Chernyaev.

The skill turns the book's guidance about readable, careful, respectful code into practical instructions for AI coding
agents: how to write, review, refactor, and explain code with better structure and style.

## Installation

Run this command inside the project where you want to use the skill:

```shell
npx skills add https://github.com/TheDragonCode/dandy-code-skill
```

## What This Repository Does

This repository converts the Markdown source of the book into an agent-ready skill.

The book is connected as a git submodule in `book/`. Only files from `book/content/` are used as canonical source
material. Draft files from `book/draft/` are ignored.

The generated skill is expected to live in:

```text
skills/dandy-code/
├── SKILL.md
└── references/*
```

`SKILL.md` contains the main agent-facing instructions. Larger supporting notes, extracted chapter references, and
traceability material belong in `references/`.

## Skill Goal

The goal is not to copy the book into a skill chapter by chapter.

The goal is to preserve the book's meaning while reformulating it into concise, operational guidance that an AI agent
can apply during real development work:

- naming and readability checks;
- code structure and formatting decisions;
- refactoring guidance;
- review criteria;
- concise examples and anti-examples;
- practical rules for writing code that is easier for humans to read.

The generated skill text should be in English.

## Updating The Skill

When regenerating the skill:

1. Update git submodules to fetch the latest book source.
2. Remove the old `skills/dandy-code/` directory if it exists.
3. Recreate `skills/dandy-code/SKILL.md`.
4. Place additional documentation in `skills/dandy-code/references/`.
5. Use only `book/content/` as source material.
6. Ignore `book/draft/`.
7. Rewrite the content for AI-agent usage instead of human book reading.
8. Translate the resulting skill into English.

More detailed agent instructions are available in `AGENTS.md`.

## Source

The source book is maintained separately:

- repository: `git@github.com:tabuna/dandy-code.git`
- source content: `book/content/`

This repository focuses on the skill adaptation layer.
