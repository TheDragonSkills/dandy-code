# Error Handling Examples

## Log Recoverable Fallbacks

```php
// Before
try {
    $message = $service->personalGreeting($user);
} catch (ExternalServiceFailed) {
    $message = 'Welcome';
}
```

```php
// After
try {
    $message = $service->personalGreeting($user);
} catch (ExternalServiceFailed $exception) {
    Log::warning('Greeting service failed', [
        'user_id' => $user->id,
        'exception' => $exception,
    ]);

    $message = 'Welcome';
}
```

## Include Identifiers In Exceptions

```php
// Before
throw new RuntimeException('Cannot delete active user');
```

```php
// After
throw new RuntimeException(sprintf(
    'Cannot delete active user: id=%d',
    $user->id,
));
```

## Replace Debugging With Named Rules

```php
final class DecisionEngine
{
    /**
     * @param WeatherRule[] $rules
     */
    public function __construct(private array $rules) {}

    public function shouldGoOutside(array $weather): bool
    {
        foreach ($this->rules as $rule) {
            if (! $rule->passes($weather)) {
                return false;
            }
        }

        return true;
    }
}
```

Small rules are easier to test than a nested method is to debug.
