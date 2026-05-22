# Naming And Value Examples

## Rename Placeholders

```php
// Before
$usr = User::find($id);
$data = $usr->orders()->pending()->get();
```

```php
// After
$user = User::find($id);
$pendingOrders = $user->orders()->pending()->get();
```

## Name Boolean Truth

```php
// Before
$admin = true;
$retry = false;

if ($user->access()) {
    // ...
}
```

```php
// After
$isAdmin = true;
$shouldRetry = false;

if ($user->hasAccess()) {
    // ...
}
```

## Replace A Meaningful Literal

```php
// Before
if ($order->status === 2) {
    $order->ship();
}
```

```php
// After
enum OrderStatus: int
{
    case Paid = 2;
    case Shipped = 3;
}

if ($order->status === OrderStatus::Paid) {
    $order->ship();
}
```

## Prefer A Domain API Over Constant Noise

```php
// Before
return $this->ageInSeconds / 60 / 60 / 24;
```

```php
// After
return $this->createdAt->diffInDays(now());
```
