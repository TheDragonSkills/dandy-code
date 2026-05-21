# AGENTS.md

## Project Purpose

This repository converts a Markdown book from an external Git repository into an AI agent skill.

The current source book is available as the `book` git submodule:

- source path: `book/`
- main content path: `book/content/`
- source repository: `git@github.com:tabuna/dandy-code.git`

The expected output is a reusable agent skill: a compact, task-oriented package that teaches an AI agent how to apply the book's ideas in real coding work.

## Agent Priorities

When working in this repository:

1. Preserve the author's meaning.
2. Convert long-form book material into practical agent behavior.
3. Keep the resulting skill concise enough to be used during real tasks.
4. Prefer structured extraction over manual copy-paste.
5. Treat the book as source material, not as code to freely rewrite.

The goal is not to reproduce the entire book inside a skill. The goal is to distill the book into actionable rules, checks, examples, and workflows that an agent can actually follow.

## Source Content

Only use Markdown files from `book/content/` as source material for the generated skill.

Ignore `book/draft/` completely. Draft files are not part of the canonical source for the skill and must not influence extraction, summaries, examples, rules, or generated output.

## Repository Boundaries

- Do not edit files under `book/` unless the task explicitly asks to update the source book or submodule.
- Generated skill files should live outside `book/`.
- Keep generated artifacts deterministic where practical.
- If build scripts are added, they should read from `book/content/` and write to the skill output directory.
- Do not commit generated PDFs, temporary renders, caches, or local editor files unless they are intentionally part of the project.

## Expected Skill Shape

A generated skill should normally include:

- `SKILL.md` as the entry point.
- A short description of when the skill should be used.
- Clear operating instructions for the agent.
- Practical rules derived from the book.
- Examples or anti-examples only when they help the agent make better decisions.
- Optional references, scripts, or templates when the material is too large for `SKILL.md`.

Avoid making `SKILL.md` a full book clone. Prefer a sharp guide that points to supporting references when detail is needed.

## Conversion Workflow

Use this workflow when implementing or improving the converter:

1. Discover source chapters from `book/content/*.md` in stable order.
2. Parse Markdown structurally when possible.
3. Extract chapter titles, core rules, examples, warnings, and recurring themes.
4. Normalize the extracted material into agent-facing guidance.
5. Generate or update the skill package.
6. Validate that the skill is readable, concise, and internally consistent.
7. Check that no important chapter-level ideas were silently dropped.

When the book contains prose aimed at human readers, rewrite it into instructions for an AI agent. Keep the voice direct and practical.

## Skill Regeneration Workflow

When the user asks to create, recreate, update, regenerate, or build the Dandy Code skill, follow this workflow:

1. Update git submodules so `book/` contains the latest available source book.
2. Remove the previous generated skill directory at `skills/dandy-code/` if it exists.
3. Create the main skill file at `skills/dandy-code/SKILL.md`.
4. Put supporting documentation, extracted references, chapter notes, or larger guidance files under `skills/dandy-code/references/`.
5. Use only `book/content/` as the source for generated skill content.
6. Ignore `book/draft/` completely.
7. Reformulate the book content so the generated skill preserves the original meaning while becoming maximally useful for an AI agent during coding, review, refactoring, and explanation tasks.
8. Translate the generated skill text into English.

The generated skill should be agent-facing, not reader-facing. Convert narrative prose into operational guidance: triggers, rules, review checks, decision criteria, and concise examples.

Do not copy the book chapter-by-chapter into the skill. Extract the durable ideas, merge repeated guidance, and keep traceability to the original `book/content/*.md` files through references or notes.

## Content Rules

- Keep Russian source nuance intact when the generated skill is in Russian.
- If generating an English skill, translate meaning rather than phrasing word-for-word.
- Preserve code examples only when they demonstrate a concrete rule.
- Prefer "do this / avoid that / check this" guidance over abstract summaries.
- Do not overfit rules to PHP unless the chapter's advice is PHP-specific.
- Mark uncertainty explicitly if a chapter cannot be converted cleanly.

## Quality Bar

Before calling the work done, check:

- The generated skill has a clear trigger/use case.
- Instructions are actionable for an agent during code writing or review.
- Similar rules from different chapters are merged instead of duplicated.
- Chapter coverage can be traced back to source files.
- The skill does not contain large copied blocks from the book without a reason.
- Any scripts can be rerun without damaging source files.

## Development Notes

This project is still being shaped. Prefer small, clear steps:

- add a source scanner before adding summarization logic;
- add traceability metadata before optimizing output;
- add tests around extraction and generation once the converter behavior stabilizes.

If you introduce commands, document them in the project README or an appropriate docs file.

## Git And Safety

- The `book/` directory is a submodule; avoid accidental source changes there.
- Check `git status` before and after edits.
- Do not discard user changes.
- Keep commits focused on the converter, generated skill structure, or documentation.
