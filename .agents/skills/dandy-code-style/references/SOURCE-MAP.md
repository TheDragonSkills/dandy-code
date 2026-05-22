# Source Map

This router represents the split set created from the canonical Markdown sources under `book/content/`.

## Boundary Map

| Child skill | Trigger | Source topics | Merge risk |
|---|---|---|---|
| `repo-onboarding` | README, project entry docs, directory structure, ownership, large-repo navigation | `002-readme`, `003-big`, communication framing | Low |
| `formatting-rhythm` | Formatter use, mechanical style, whitespace, blank-line grouping | `005-code-style`, `006-code-breath` | Low |
| `naming-clarity` | Names, booleans, units, magic values, enums, value objects | `007-naming`, `008-magic-value`, data-shape parts of `010-no-nonsense` | Medium |
| `control-flow-simplifier` | Early returns, conditions, argument lists, method size, object responsibility, extension points | `009-size`, `010-no-nonsense`, `011-early-exit`, `012-conditions`, `013-arguments` | Medium |
| `php-error-handling` | PHP exceptions, logging, fallbacks, clear errors, debugger-heavy code | `014-exceptions`, testing guidance from `017-tests` | Low |
| `comment-curator` | Comments, stale TODO/HACK/FIXME notes, commented-out code, examples in config comments | `015-comments`, commented-code parts of `016-remove` | Low |
| `testability-maintenance` | Unit tests, AAA, independence, coverage, deletion, upgrades | `016-remove`, `017-tests`, `019-upgrade` | Medium |
| `framework-fit` | Framework conventions, duplicate abstraction layers, tool fit | `018-frameworks`, upgrade context from `019-upgrade` | Low |
| `ai-code-ownership` | Generated-code review, context gaps, duplicate truth, project ownership | `020-copilot`, tests and communication context | Low |

## Full Source Coverage

| Source | Coverage |
|---|---|
| `book/content/001-preface.md` | Scope and tone for practical, readable, PHP-heavy code guidance across all children. |
| `book/content/002-readme.md` | `repo-onboarding`. |
| `book/content/003-big.md` | `repo-onboarding`. |
| `book/content/004-communication.md` | Router scope, `formatting-rhythm`, `ai-code-ownership`. |
| `book/content/005-code-style.md` | `formatting-rhythm`. |
| `book/content/006-code-breath.md` | `formatting-rhythm`. |
| `book/content/007-naming.md` | `naming-clarity`. |
| `book/content/008-magic-value.md` | `naming-clarity`. |
| `book/content/009-size.md` | `control-flow-simplifier`. |
| `book/content/010-no-nonsense.md` | `naming-clarity`, `control-flow-simplifier`. |
| `book/content/011-early-exit.md` | `control-flow-simplifier`. |
| `book/content/012-conditions.md` | `control-flow-simplifier`. |
| `book/content/013-arguments.md` | `control-flow-simplifier`. |
| `book/content/014-exceptions.md` | `php-error-handling`. |
| `book/content/015-comments.md` | `comment-curator`. |
| `book/content/016-remove.md` | `comment-curator`, `testability-maintenance`. |
| `book/content/017-tests.md` | `testability-maintenance`, `php-error-handling`, `ai-code-ownership`. |
| `book/content/018-frameworks.md` | `framework-fit`. |
| `book/content/019-upgrade.md` | `testability-maintenance`, `framework-fit`. |
| `book/content/020-copilot.md` | `ai-code-ownership`. |
| `book/content/099-after.md` | Router scope: understandable, predictable code as the split set's common goal. |
