# PHP And Framework Practices

Use this reference when working in PHP, Laravel, or a similar batteries-included
framework. Adapt the ideas to local project conventions.

## PHP Exceptions And Logging

- In PHP, model expected, intentionally handled failures with domain-specific
  exceptions that callers can catch.
- Use `RuntimeException` or a more specific runtime subtype for invalid program
  state, wrong API usage, missing invariants, or failures the caller is not
  expected to routinely recover from.
- Never use an empty `catch` block. If the application can continue, log the
  failure with enough context and return the fallback intentionally.

```php
try {
    $message = $this->greeting($time);
} catch (ExternalApiException $exception) {
    Log::warning('Greeting service failed', [
        'time' => $time,
        'exception' => $exception,
    ]);

    $message = 'Welcome!';
}
```

- Error messages should include the concrete subject when it is safe to do so:
  IDs, state names, operation names, or external service names.
- Use the project's central logger, preferably PSR-3-compatible in PHP
  projects. Avoid one-off `file_put_contents()` logging with inconsistent
  formats.
- Ensure logs are rotated, searchable, and connected to monitoring when the
  system is production-facing.

## Data And Objects

- Prefer objects for values that carry rules, units, conversions, or domain
  meaning: temperature, file size, money, date ranges, identifiers, text
  transformations.
- Avoid nested raw arrays when behavior or structure matters. Encapsulate access
  behind objects, typed DTOs, collections, or framework models.
- Use a Null Object when a missing value has safe default behavior and repeated
  null checks obscure intent.
- Avoid mutating arguments by reference. Prefer functions that return a new
  value or object so the call site shows the assignment explicitly.
- Favor immutable value transformations for small domain objects when hidden
  mutation would surprise the reader.

## Extension Points

- Do not reach for inheritance just to change one line of behavior.
- If behavior needs to vary, first consider a callback, strategy object,
  interface, or injected collaborator.
- Use inheritance when there is a stable hierarchy and the subtype relationship
  is part of the domain or framework contract.
- When a callback grows complex or appears in multiple places, promote it to a
  named object or interface.

## Framework Alignment

- Treat a framework as a style contract, not only a dependency. Once a project
  chooses Laravel, Symfony, Rails, Django, Phoenix, or another full framework,
  use its conventions unless there is a documented project reason not to.
- Avoid architectural layers that duplicate framework features by reflex. For
  example, do not add a repository abstraction over an ORM merely because a
  generic rule says persistence must be hidden.
- Use framework-native validation, authorization, routing, configuration,
  queueing, events, and testing helpers when they fit the problem.
- Do not mix several frameworks' favorite parts into one project unless the
  integration cost and maintenance model are explicit. A framework is an
  ecosystem with documentation, defaults, and shared expectations.
- If the team fundamentally dislikes a framework's philosophy, do not spend the
  project fighting it. Choose a better-fitting tool or accept the current one
  honestly.

## Modernization

- Keep language, framework, and package versions close to supported releases.
- Prefer small, routine upgrades over rare, painful upgrade projects.
- Treat "it works, do not touch it" as a risk signal when dependencies are
  aging, unsupported, or blocking standard features.
- Modern versions often replace homegrown workarounds with built-in features.
  Remove the workaround when the platform now owns the job.
- Consider onboarding and hiring: current tools make a codebase easier for new
  developers to understand and trust.
