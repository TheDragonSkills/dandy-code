# Testability And Maintenance Examples

## Test Core Logic Directly

```php
public function test_moon_age_for_known_date(): void
{
    $phase = new MoonPhase(new DateTimeImmutable('2026-05-22'));

    $this->assertEquals(5.1, round($phase->age(), 1));
}
```

## Preserve Paired Flow Symmetry

```php
public function test_exported_archive_can_be_imported(): void
{
    $archive = (new WeatherHistoryExporter())->export($this->history());

    $imported = (new WeatherHistoryImporter())->import($archive);

    $this->assertSame(
        $this->history()->readingIds(),
        $imported->readingIds()
    );
}
```

## Replace Sleep With A Fake

```php
// Before
dispatch(new SendWelcomeEmail($user));
sleep(3);
$this->assertDatabaseHas('emails', ['user_id' => $user->id]);
```

```php
// After
Bus::fake();

dispatch(new SendWelcomeEmail($user));

Bus::assertDispatched(
    SendWelcomeEmail::class,
    fn (SendWelcomeEmail $job) => $job->userId === $user->id
);
```

## Delete Stale Code

```php
// Before
// return base64_encode($this->payload());
return $this->sign($this->payload());
```

```php
// After
return $this->sign($this->payload());
```
