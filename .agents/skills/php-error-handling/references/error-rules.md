# Error Rules

- Never catch and forget `Throwable`.
- A fallback is acceptable only when the failure remains observable.
- Include useful context in logs: identifiers, arguments safe to record, and the exception object.
- Avoid generic messages that make the operator guess which record failed.
- Keep logging structure consistent across the project.
- Prefer PSR-3-compatible logging or the project's established logger.
- Use unchecked/runtime exceptions for invalid state, API misuse, and logic failures that callers are not expected to handle routinely.
- Use expected exception types for failures the caller should catch and handle.
- Treat heavy debugger dependence as a design smell: isolate decisions into named classes, rules, or methods and test them.
