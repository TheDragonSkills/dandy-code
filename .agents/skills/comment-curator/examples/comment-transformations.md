# Comment Transformation Examples

## Replace Obvious Comment With A Name

```php
// Before
// date for yesterday
$date = date('Y-m-d', strtotime('yesterday'));
```

```php
// After
$yesterday = date('Y-m-d', strtotime('yesterday'));
```

## Keep The Reason

```php
// Good
// Start from 5 because the first five users were imported manually.
$nextUserNumber = 5;
```

The comment explains context the value cannot express alone.

## Remove Commented-Out Code

```php
// Before
public function token(): string
{
    // return base64_encode($this->payload());
    // Log::debug('Generating token');

    return $this->sign($this->payload());
}
```

```php
// After
public function token(): string
{
    return $this->sign($this->payload());
}
```

## Add A Configuration Example

```php
/*
 | Icons path aliases.
 |
 | Example: ['fa' => storage_path('app/fontawesome')]
 */
'icons' => [],
```
