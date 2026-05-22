# Test Patterns

## Unit Test Domain Logic

```php
public function test_moon_phase_for_known_date(): void
{
    $date = new DateTimeImmutable('2025-06-01');

    $moon = new MoonPhase($date);

    $this->assertEquals(13.8, round($moon->age, 1));
    $this->assertEqualsWithDelta(0.47, $moon->phase, 0.01);
}
```

## Keep Setup Near the Test

```php
public function test_user_can_export_own_document(): void
{
    $user = User::factory()->create();
    $document = Document::factory()->for($user)->published()->create();

    $result = $user->canExport($document);

    $this->assertTrue($result);
}
```

## Symmetry Test

```php
public function test_export_can_be_imported_without_shape_changes(): void
{
    $archive = (new WeatherHistoryExporter())->export($history);

    $imported = (new WeatherHistoryImporter())->import($archive);

    $this->assertEquals($history->checksum(), $imported->checksum());
}
```

## Replace Sleep With Fake

```php
public function test_email_job_is_dispatched(): void
{
    Bus::fake();

    $this->dispatch(new SendEmailJob($user));

    Bus::assertDispatched(
        SendEmailJob::class,
        fn (SendEmailJob $job) => $job->user->is($user),
    );
}
```
