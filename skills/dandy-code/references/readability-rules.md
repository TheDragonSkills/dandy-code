# Readability Rules

Use these rules when writing or refactoring code that should be easier for
humans to read. Treat them as decision criteria, not as rigid ceremony.

## Code As Communication

- Optimize for the next reader, including the future author of the code.
- Prefer code that lets the reader understand intent from local context.
- Remove avoidable mental translation: mixed naming languages, unexplained
  acronyms, dense expressions, and hidden side effects.
- Make the common path easy to see. Put edge cases at the top and get them out
  of the way.

## Formatting And Breath

- Follow the project's formatter and standard style. In PHP, this usually means
  PSR-12, PER, Laravel Pint, PHP-CS-Fixer, or the project's configured tool.
- Automate style checks and fixes where possible. Humans should review behavior,
  design, and clarity rather than trailing spaces.
- Separate completed logical thoughts with one blank line:

```php
$user = $request->user();

$zone = ClimateZone::find($id);
$zone->assign($user);
$zone->save();

return $zone;
```

- Avoid both extremes: a wall of uninterrupted statements and a file where every
  line is isolated.
- If unsure about a blank line, imagine a short comment at that boundary. If the
  comment would name a new thought, the blank line is probably useful.

## Naming

- Use the codebase's main technical language consistently. In most projects that
  use English frameworks and libraries, names should also be English.
- Avoid transliteration and mixed-language names unless the domain itself uses a
  stable non-English term.
- Avoid unexplained abbreviations: prefer `$user` over `$usr` unless the local
  language or framework convention clearly accepts the abbreviation.
- Avoid vague containers such as `$data`, `$info`, `$item`, `$value`, and
  `handleData()` once the context is larger than a tiny local scope.
- Boolean names should read as boolean: `isAdmin`, `hasAccess`,
  `shouldRetry`, `canExport`.
- Include units in names when raw numbers are used:
  `$temperatureInCelsius`, `$timeoutInSeconds`, `$sizeInBytes`.
- Prefer a value object when units or conversions matter across the codebase:

```php
$temperature = Temperature::fromFahrenheit(98.6);
```

- Be concise from context. Inside `PostCollection`, methods such as `add`,
  `has`, and `clear` can be clearer than repeating `Post` in every method name.
- Watch generic responsibility suffixes such as `Manager`, `Handler`,
  `Processor`, `Formatter`, and `Controller`. They are sometimes framework
  terms, but in application code they often hide an unclear responsibility.
- Use paired names that sound like a pair: `start`/`finish`,
  `begin`/`complete`, `open`/`close`.
- Names must not lie. A method called `saveModels()` should not accept
  attributes for one model.
- Define conventions for routes, translation keys, directories, event names, and
  generated files when the language or framework does not already do it.

## Magic Values

- Replace meaningful unexplained literals with named concepts:

```php
if ($status === Status::ACTIVE) {
    // ...
}
```

- Use enums, constants, value objects, or framework types when they reveal the
  allowed set of values.
- Do not blindly turn every literal into constants. If the code is manually
  converting time, size, money, or units, prefer a dedicated API or object that
  hides the mechanics.
- Use named capture groups in regular expressions when the extracted parts have
  meaning.
- Prefer string templates such as `sprintf()` or interpolation patterns over
  long chains of concatenation when many variables are involved.

## Size And Responsibility

- Long methods and classes make readers hold too much state in their head. Split
  when a block has its own responsibility, not just to reduce line count.
- Avoid orchestration methods made of `step1()`, `step2()`, `load()`,
  `process()`, `finish()` if the extracted methods are only fragments with no
  independent meaning.
- Prefer intention-revealing interactions:

```php
if ($user->canExport($document)) {
    $content = $document->export(Excel::class);
}
```

- Do not ask an object for several pieces of data just to make a decision the
  object can make itself.
- Avoid temporary variables that add no meaning. Keep variables when they name a
  concept, remove duplication, avoid repeated expensive work, or make a complex
  expression readable.
- Do not reuse one variable for multiple types. If raw data becomes an object,
  use two names such as `$userData` and `$user`.

## Control Flow

- Use guard clauses and early returns to handle invalid or edge cases first.
- Prefer `continue` in loops when it removes a level of nesting.
- Reduce `else` when a previous branch already returned, threw, broke, or
  continued.
- Extract a nontrivial condition into a named predicate or query method.
- Avoid clever nested ternaries, dense null coalescing chains, and expressions
  that require the reader to simulate the language.
- Keep assignment separate from conditions:

```php
$user = $this->getUser();

if ($user !== null) {
    $this->sendNotification($user);
}
```

- Prefer positive conditions. If `! $user->isActive()` appears often, consider
  `isInactive()`.

## Arguments And APIs

- Keep methods to three parameters or fewer when possible.
- Put optional arguments at the end so callers do not pass placeholder `null`
  values.
- Avoid associative option arrays for public APIs when the shape matters; they
  hide required keys and weaken type checks.
- Named arguments can be fine for a small number of optional flags.
- If configuration grows, use a fluent API or a meaningful object with behavior:

```php
$fileSystem
    ->path('/path/to/file.txt')
    ->encoding('UTF-8')
    ->overwrite()
    ->write($contents);
```

- Boolean arguments are acceptable when they do not split the method into two
  different behaviors. If `true` and `false` are really separate operations,
  create separate methods.
- Prefer passing domain objects over scalar bundles when the object already owns
  the identity or behavior needed by the method.

## Comments

- Comments should explain why, context, constraints, or examples the code cannot
  express clearly.
- Remove comments that restate obvious code.
- Update comments with the code. A stale comment is worse than no comment.
- Replace apology comments such as `TODO: hack` with a real issue, a clearer
  name, or a small refactor when possible.
- In configuration files, include concrete examples when the accepted shape is
  not obvious.
- Format multi-line comments so they are easy to scan.
