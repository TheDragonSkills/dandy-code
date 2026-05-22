# Framework Fit Example

```php
// Suspicious when it only forwards calls.
final class UserRepository
{
    public function find(int $id): ?User
    {
        return User::query()->find($id);
    }
}
```

Ask:

- Does this layer switch storage implementations?
- Does it centralize a domain query that would otherwise be duplicated?
- Does it protect a volatile external dependency?
- Does it make testing clearer without lying about behavior?

If all answers are no, prefer the framework's standard API or a named domain query where needed.

```php
// Better when it expresses a real domain query.
final class ActiveCustomerQuery
{
    public function forRegion(Region $region): Collection
    {
        return User::query()
            ->active()
            ->whereBelongsTo($region)
            ->get();
    }
}
```
