# Flow Refactors

## Guard Clause

```php
// Before
if ($user->isActive()) {
    return $this->buildProfile($user);
}

return null;

// After
if (! $user->isActive()) {
    return null;
}

return $this->buildProfile($user);
```

## Remove Else

```php
// Before
if ($user->isBanned()) {
    return false;
} else {
    return $user->hasPermission('edit');
}

// After
if ($user->isBanned()) {
    return false;
}

return $user->hasPermission('edit');
```

## Loop Continue

```php
foreach ($orders as $order) {
    if (! $order->isPaid()) {
        continue;
    }

    foreach ($order->items as $item) {
        if (! $item->isInStock()) {
            continue;
        }

        $this->reserve($item);
    }
}
```

## Named Condition

```php
private function hasTooManyNewFiles(): bool
{
    return $this->newFilesQuery()->count() > $this->threshold();
}

while ($this->hasTooManyNewFiles()) {
    $this->processNextFile();
}
```
