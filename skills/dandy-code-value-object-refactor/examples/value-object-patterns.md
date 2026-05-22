# Value Object Patterns

## Enum for Domain State

```php
// Before
if ($status === 1) {
    publish();
}

// After
enum Status: int
{
    case Active = 1;
    case Archived = 2;
}

if ($status === Status::Active) {
    publish();
}
```

## Unit Object

```php
final class Temperature
{
    private function __construct(private float $celsius) {}

    public static function fromCelsius(float $degrees): self
    {
        return new self($degrees);
    }

    public static function fromFahrenheit(float $degrees): self
    {
        return new self(($degrees - 32) * 5 / 9);
    }

    public function celsius(): float
    {
        return $this->celsius;
    }
}
```

## Replace Nested Functions with Fluent Value

```php
// Before
$title = strtoupper(trim(substr($input, 0, 40)));

// After
$title = Text::from($input)
    ->limit(40)
    ->trim()
    ->upper()
    ->toString();
```

## Return Instead of Mutating by Reference

```php
// Before
function convertToFahrenheit(float &$celsius): void
{
    $celsius = $celsius * 9 / 5 + 32;
}

// After
function fahrenheitFromCelsius(float $celsius): float
{
    return $celsius * 9 / 5 + 32;
}
```

## Strategy Instead of Subclass Explosion

```php
$groups = (new NewsGrouper($items))
    ->groupBy(new SimilarTitleComparator());
```
