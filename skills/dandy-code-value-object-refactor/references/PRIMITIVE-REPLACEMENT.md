# Primitive Replacement Rules

## Magic Values

Use a named constant or enum when a literal represents a domain state:

- status codes
- lifecycle names
- fixed protocol values
- non-obvious thresholds

Do not create constants for obvious local values when a higher-level API would read better.

## Prefer Existing Domain Objects

If date, money, size, temperature, path, or text behavior already exists in a library or local class, use it. Avoid spreading conversions such as seconds-to-days or bytes-to-megabytes across application code.

## Object Over Array

Arrays are fine at boundaries, but repeated nested access inside domain code is a smell. Move structure knowledge into an object when code repeatedly asks:

- `isset($user['address']['city'])`
- `array_filter` over raw records
- unknown defaults for missing keys
- manual validation before every use

## Null Object

Use a null object when a missing collaborator should provide harmless default behavior. Do not use it to hide real errors or permission failures.

## Immutability

Prefer methods that return a new value over methods that mutate input by reference. This keeps data flow visible and makes tests easier.

## Extension Points

Before adding subclasses for minor behavior changes, ask whether the variation can be a callable, strategy object, or interface. Inheritance is a poor default for small algorithm changes.
