# Testing And Maintenance

Use this reference when adding tests, reviewing test quality, deleting old code,
or deciding whether a refactor is safe.

## Tests As The First Client

- The developer is the first tester of their code. Do not delegate basic quality
  confidence to a later manual QA phase.
- Unit tests influence code quality most directly because they force behavior
  into small, isolated, callable units.
- Feature, integration, browser, and smoke tests are still useful, but they
  should not be the only proof that core logic works.
- If business logic is hard to unit test, move it out of controllers, commands,
  UI handlers, or framework glue into focused objects.

## Architectural Symmetry

- Add tests that connect paired components when their contracts must match:
  exporter/importer, serializer/parser, encoder/decoder, writer/reader,
  migration/rollback.
- A good symmetry test proves that one stage's output can become the next
  stage's input without hidden manual translation.
- Use these tests to reveal context gaps that a local implementation or AI tool
  may miss.

## Test Structure

- Use Arrange, Act, Assert:

```php
public function test_moon_phase_for_known_date(): void
{
    $date = new DateTimeImmutable('2025-06-01');
    $moon = new MoonPhase($date);

    $this->assertEquals(13.8, round($moon->age, 1));
    $this->assertEqualsWithDelta(0.47, $moon->phase, 0.01);
}
```

- Keep setup close to the test. Prefer factories or builders over shared fixture
  files that hide which records matter.
- Test one behavior at a time. Multiple assertions are fine when they describe
  one coherent behavior.
- Mirror the application's structure in the test tree so related tests are easy
  to find.

## Test Independence

- Tests must not depend on execution order or state left by previous tests.
- Run tests in random order when the framework supports it.
- Reset databases, fakes, clocks, queues, caches, and global state between
  tests.
- Use coverage to find unexecuted lines and branches. Coverage does not prove
  test quality, but it reveals forgotten paths.

## Avoid Sleep

- `sleep()` in tests usually means the test does not control the system.
- Prefer fakes, mocks, synchronous execution, controllable clocks, or event
  assertions for queues, mail, HTTP, and external services.
- If a real asynchronous side effect must be observed, wait for a condition with
  a timeout rather than sleeping a fixed duration.

## Deleting And Renaming

- Delete commented-out code. Version control already keeps history.
- Remove dead branches, obsolete compatibility code, abandoned experiments, and
  old names once they no longer match behavior.
- Rename aggressively when behavior changes. A stale name makes every reader
  inspect the implementation to know what is true.
- Tests reduce fear-driven development: with coverage in the right places, it is
  safer to delete, rename, upgrade, and simplify.

## Debugging Signal

- Debuggers are useful tools, but needing to step through every line often means
  behavior is poorly localized.
- Prefer extracting isolated rules and asserting their behavior directly.
- When a bug requires heavy manual debugging, look for a missing test seam,
  hidden side effect, or overly broad responsibility.

## AI-Assisted Code

- Treat generated code as a draft that continues the style and context it was
  given.
- Before accepting AI output, check:
  - Does it fit existing ownership boundaries?
  - Did it duplicate a repository, service, query, or validation rule that
    already exists elsewhere?
  - Does it preserve contracts between paired components?
  - Did it add tests at the right level?
  - Did it introduce security, logging, or error-handling gaps?
- Make the code yours: read it, simplify it, rename it, and align it with local
  conventions before committing.
