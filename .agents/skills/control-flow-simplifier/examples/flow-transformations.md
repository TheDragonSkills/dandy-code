# Flow Transformation Examples

## Flatten Nested Branches

```php
// Before
public function activate(User $user): bool
{
    if ($user->emailVerified()) {
        if (! $user->isBanned()) {
            $user->activate();

            return true;
        }
    }

    return false;
}
```

```php
// After
public function activate(User $user): bool
{
    if (! $user->emailVerified()) {
        return false;
    }

    if ($user->isBanned()) {
        return false;
    }

    $user->activate();

    return true;
}
```

## Name A Complex Condition

```php
// Before
while (File::query()->where('event_id', $event->id)->where('status', 'new')->count() > $limit) {
    $this->processNextFile();
}
```

```php
// After
while ($this->hasTooManyNewFiles($event, $limit)) {
    $this->processNextFile();
}

private function hasTooManyNewFiles(Event $event, int $limit): bool
{
    return File::query()
        ->where('event_id', $event->id)
        ->where('status', FileStatus::New)
        ->count() > $limit;
}
```

## Replace Flag Lists With Named Steps

```php
// Before
$writer->write('/tmp/report.csv', true, 'UTF-8', true, $rows);
```

```php
// After
$writer
    ->path('/tmp/report.csv')
    ->encoding('UTF-8')
    ->overwrite()
    ->debug()
    ->write($rows);
```

## Tell, Do Not Ask

```php
// Before
if ($document->isPublished() && $user->hasRole('editor')) {
    $document->export();
}
```

```php
// After
if ($user->canExport($document)) {
    $document->export();
}
```
