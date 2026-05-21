---
name: create-skill-from-book
description: Convert a Markdown book or curated Markdown source directory into a concise, agent-facing Codex skill. Use when asked to create, recreate, update, regenerate, or review a skill derived from book chapters or Markdown documentation, especially this repository's Dandy Code skill from book/content/ into skills/dandy-code/.
---

# Create Skill From Book

Transform canonical Markdown source material into a compact skill that another AI agent can use during real work. Preserve the author's meaning, but rewrite reader-facing prose into operational guidance: triggers, workflows, rules, checks, decision criteria, and concise examples.

## Repository Defaults

When the user does not provide a different source or output path, use this repository contract:

- Source repository: `book/` git submodule.
- Canonical source files: `book/content/*.md`, read in stable filename order.
- Ignored source files: everything under `book/draft/`.
- Generated skill directory: `skills/dandy-code/`.
- Main generated file: `skills/dandy-code/SKILL.md`.
- Supporting material: `skills/dandy-code/references/`.
- Output language: English.

Do not edit files under `book/` unless the user explicitly asks to update the source book itself.

## Workflow

1. Check `git status` before editing so existing user changes are visible.
2. If regenerating this repository's Dandy Code skill, update the `book/` submodule before extraction. If submodule update is blocked by permissions or network access, say so and continue only if the user accepts the local snapshot.
3. Remove the previous generated output directory only when the task is a full regeneration and the directory is the intended output target.
4. Discover Markdown sources structurally, not by manual copy-paste. Prefer `rg --files book/content -g '*.md'` or the local equivalent, then sort paths for deterministic order.
5. Parse or inspect headings, sections, lists, code fences, examples, warnings, and recurring terms. Record each chapter's title, durable ideas, concrete rules, useful examples, and source filename.
6. Distill repeated ideas across chapters into merged agent behavior. Do not create a chapter-by-chapter book clone.
7. Generate the skill package with a lean `SKILL.md` and supporting `references/` files for detailed notes, coverage maps, or larger examples.
8. Validate the result against the quality gate below, then check `git status` again.

## Extraction Rules

- Convert narrative advice into direct instructions an agent can follow while coding, reviewing, refactoring, testing, or explaining code.
- Preserve meaning over wording. Translate ideas into English rather than translating Russian phrasing word-for-word.
- Keep code examples only when they teach a concrete rule or failure mode.
- Mark language-specific guidance clearly; do not overgeneralize PHP-specific advice into universal rules.
- Preserve nuance when the book gives tradeoffs. Avoid turning contextual advice into absolute rules.
- Mark uncertainty explicitly in a reference note when a chapter cannot be converted cleanly.
- Keep traceability: every source chapter should be represented in the generated skill, a reference file, or an explicit coverage note.

## Generated Skill Shape

The generated skill should normally contain:

- `SKILL.md` with YAML frontmatter containing only `name` and `description`.
- A description that includes both what the generated skill does and the concrete requests that should trigger it.
- Short operating instructions for the agent.
- Practical rules and review checks derived from the source book.
- Examples or anti-examples only when they improve agent decisions.
- `references/` files for chapter notes, traceability maps, larger examples, or detailed supporting guidance.

Keep `SKILL.md` concise enough to load during normal work. Move detailed source notes into `references/` and link them from `SKILL.md` with clear instructions about when to read them.

## Quality Gate

Before calling the generated skill complete, verify:

- The generated skill has valid frontmatter with `name` and `description`.
- The description is strong enough to trigger the skill without relying on a "when to use" section in the body.
- Instructions are agent-facing and actionable, not a reader-facing summary of the book.
- Similar ideas from different chapters are merged instead of duplicated.
- The generated skill uses only canonical Markdown sources and excludes drafts.
- Chapter coverage can be traced back to source files.
- Long copied passages from the book are absent unless a short quotation is essential.
- The generated skill can be used without loading the entire source book.
- Any scripts or generation commands are deterministic and do not modify source files.
- The final `git status` contains only intentional changes.

## Reviewing An Existing Book-Derived Skill

When asked to review or improve an existing generated skill, check it in this order:

1. Valid skill structure: frontmatter, naming, concise body, and appropriate references.
2. Correct source boundaries: canonical Markdown only, no draft leakage, no accidental source edits.
3. Faithfulness: core ideas preserved, tradeoffs retained, uncertainty marked.
4. Agent usefulness: instructions phrased as concrete behavior, checks, and decision rules.
5. Compression quality: no book clone, no repeated chapter summaries, no unnecessary background.
6. Traceability and validation: coverage notes exist and the quality gate can be rerun.
