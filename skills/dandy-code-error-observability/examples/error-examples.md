# Error Examples

## Fallback With Logging

```php
try {
    $message = $this->greeting($time);
} catch (ExternalApiException $exception) {
    Log::warning('Greeting service failed; using default message.', [
        'time' => $time,
        'exception' => $exception,
    ]);

    $message = 'Welcome!';
}
```

## Specific Exception Message

```php
foreach ($users as $user) {
    if ($user->isActive()) {
        throw new RuntimeException(sprintf(
            'Cannot delete active user: ID=%d',
            $user->id,
        ));
    }
}
```

## Testable Decision Rule

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
