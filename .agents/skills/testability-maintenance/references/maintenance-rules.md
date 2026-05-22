# Maintenance Rules

## Tests

- Developers are the first testers of their own code.
- Unit tests shape code quality because they force small, isolated behavior.
- Feature and integration tests are valuable for boundaries and flows, but they should not be the only proof of core logic.
- Tests should mirror application structure.
- Each test should be independent of order and previous state.
- Run random order to expose hidden coupling.
- Coverage reveals unexecuted code, especially missed branches.
- Avoid `sleep()` because it hides lack of control. Fake the boundary or wait for a condition with a timeout.

## Deletion

- Delete commented-out code.
- Rename code when behavior changes.
- Use tests to reduce fear-driven development.
- Preserve old versions in version control, not in source comments.

## Modernization

- Keep language, framework, and dependency versions moving while gaps are small.
- Temporary compatibility code needs a removal path.
- Upgrade delay increases cost, blocks standard features, and makes hiring harder.
