# Framework Fit Examples

## Repository Wrapper Smell

```php
// Questionable when it only forwards native model queries.
interface UserRepository
{
    public function find(int $id): ?User;
}

final class EloquentUserRepository implements UserRepository
{
    public function find(int $id): ?User
    {
        return User::find($id);
    }
}
```

Review note:

```md
This abstraction does not add a second implementation, isolate a domain rule,
or reduce framework coupling in practice. Prefer the framework's model/query
API unless a real boundary appears.
```

## Useful Boundary

```php
interface WeatherProvider
{
    public function forecastFor(Location $location): Forecast;
}
```

Review note:

```md
This boundary is useful because external weather services can vary and the
domain should not depend on one provider's HTTP response shape.
```

## Upgrade Finding

```md
The project carries a custom authorization layer that duplicates a feature now
available in the current framework line. Plan a small migration while the gap is
still narrow; delaying turns a compatibility cleanup into a larger rewrite.
```
