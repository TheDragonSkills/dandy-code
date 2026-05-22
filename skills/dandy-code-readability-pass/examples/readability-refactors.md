# Readability Refactors

## Logical Spacing

Before:

```php
$user = $request->user();
$zone = ClimateZone::find($id);
$zone->assign($user);
$zone->save();
return $zone;
```

After:

```php
$user = $request->user();

$zone = ClimateZone::find($id);
$zone->assign($user);
$zone->save();

return $zone;
```

## Remove Dead Code

Before:

```php
public function token(): string
{
    // $this->logger->debug('legacy token path');
    $payload = [
        // 'role' => 'user',
        'sub' => $this->user->getKey(),
    ];

    return $this->sign($payload);
}
```

After:

```php
public function token(): string
{
    return $this->sign([
        'sub' => $this->user->getKey(),
    ]);
}
```

## Keep Useful Comments

Before:

```php
// Set counter to five.
$counter = 5;
```

After:

```php
// The first five accounts were imported manually before automation existed.
$counter = 5;
```
