# Component Extraction Examples

## Good Candidate

```php
final class Temperature
{
    private function __construct(private float $celsius) {}

    public static function fromCelsius(float $value): self
    {
        return new self($value);
    }

    public static function fromFahrenheit(float $value): self
    {
        return new self(($value - 32) * 5 / 9);
    }

    public function inCelsius(): float
    {
        return $this->celsius;
    }
}
```

Why it can be extracted:

- the responsibility is narrow
- there is no application container dependency
- tests can cover it directly
- the concept can be reused across APIs, reports, and imports

## Bad Candidate

```php
final class CheckoutWorkflow
{
    public function __construct(
        private Request $request,
        private Container $container,
        private Session $session,
    ) {}
}
```

Why it should stay in the application for now:

- it depends on framework runtime state
- it likely changes with product flow
- extracting it would move complexity instead of reducing it

## First Extraction Plan

```md
1. Add focused unit tests around the candidate class.
2. Define the smallest public methods callers need.
3. Move framework-dependent adapters out of the component.
4. Add a short README with purpose, install, test, and ownership.
5. Update host code through one integration point.
6. Keep host integration tests green.
```
