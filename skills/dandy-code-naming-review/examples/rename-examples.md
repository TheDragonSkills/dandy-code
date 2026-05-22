# Rename Examples

## Abbreviation

```php
// Before
$usr = User::find($id);

// After
$user = User::find($id);
```

## Boolean Predicate

```php
// Before
$retry = false;

if ($user->access()) {
    // ...
}

// After
$shouldRetry = false;

if ($user->hasAccess()) {
    // ...
}
```

## Unit Clarity

```php
// Before
$temperature = 98.6;

// After
$temperatureInFahrenheit = 98.6;
```

## Paired Methods

```php
// Before
$task->startProcess();
$task->completeTask();

// After
$task->start();
$task->finish();
```

## Misleading Cardinality

```php
// Before
public function saveModels(array $attributes): void
{
    $model = new Model($attributes);
    $model->save();
}

// After
public function saveModel(array $attributes): void
{
    $model = new Model($attributes);
    $model->save();
}
```
