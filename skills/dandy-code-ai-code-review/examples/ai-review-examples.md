# AI Review Examples

## Continuation Bias Finding

```md
Finding: The generated change adds file logging directly inside `store()`,
but the method already mixes request input, persistence, mail, and response
output. This continues the existing procedural shape and adds another side
effect. Extract the registration flow into a service, use the project's logger,
and add a test around the logging branch.
```

## Missing Context Finding

```md
Finding: Token uniqueness is checked with a raw database query in the service,
but token lookup is already owned by `TokenRepository`. This creates two sources
of truth and bypasses the repository's constraints. Inject the repository or move
generation there.
```

## Symmetry Check

```php
public function test_export_output_is_import_input(): void
{
    $archive = $exporter->export($history);

    $imported = $importer->import($archive);

    $this->assertEquals($history->checksum(), $imported->checksum());
}
```

## Prompt Hygiene

```md
Before asking for a patch, provide:

- the edited file
- the caller or route
- related tests
- existing service or repository boundaries
- error handling and logging conventions
```
