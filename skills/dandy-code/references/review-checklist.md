# Review Checklist

Use this checklist during code review or before handing back an implementation.
Report concrete, actionable findings. Skip items that do not apply.

## Repository Entry

- README states what the project does and why it exists.
- Setup and run commands are current, minimal, and reproducible.
- Test commands are documented.
- Seed/reset or sample-data workflow is documented when local work needs data.
- Directory structure explains where common kinds of code belong.
- Maintainers, owners, or CODEOWNERS are discoverable.

## Structure

- Large modules or monolith areas have clear boundaries and entry points.
- Reusable, isolated behavior is not buried inside unrelated application code.
- New files follow the project's established directory and naming conventions.
- The change does not create a second source of truth for an existing concept.

## Readability

- Formatter output is clean and consistent.
- Blank lines separate logical blocks without fragmenting every statement.
- Names are specific, truthful, and consistent with local language conventions.
- Boolean names read as questions or predicates.
- Units, statuses, modes, and domain concepts are explicit.
- Comments explain context or examples, not obvious statements.
- Stale comments, commented-out code, and apology TODOs are removed or converted
  into real follow-up work.

## Flow And API Design

- Guard clauses keep the main path visible.
- Nesting, `else`, dense ternaries, and negated conditions are minimized.
- Nontrivial conditions have names.
- Assignments are not hidden inside conditions.
- Method arguments are few, ordered clearly, and typed where possible.
- Boolean arguments do not split one method into two unrelated behaviors.
- Objects are passed when scalars would leak domain rules or grow into bundles.

## Errors And Observability

- Exceptions communicate the concrete failure and include safe context.
- Expected fallbacks still log the failure.
- No empty catches or silent suppression.
- Logging uses the project's central logger and consistent structure.
- Production-facing failures can be monitored or searched.

## Tests

- Core logic has unit tests, not only controller or end-to-end coverage.
- Integration tests cover important boundaries and paired contracts.
- Test setup is local and understandable.
- Tests are independent and safe to run in random order.
- No fixed `sleep()` unless there is no controllable alternative.
- Coverage or branch reasoning shows important paths were not skipped.

## Framework And Modernity

- The implementation uses the chosen framework's conventions and helpers.
- New abstractions do not duplicate framework responsibilities without a strong
  local reason.
- Dependencies and APIs are not kept on obsolete patterns when a supported
  platform feature is available.
- Upgrade or compatibility work removes old workarounds when possible.

## AI Output

- Generated code was reviewed against surrounding context, not accepted as-is.
- It does not continue messy local patterns when a small cleanup is part of the
  task.
- It preserves security, ownership, tests, and framework expectations.
