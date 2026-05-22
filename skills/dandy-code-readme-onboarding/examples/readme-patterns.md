# README Patterns

## Minimal Shape

````md
# Weather

Weather receives meteorological readings through a REST API, enriches them
with derived values, and exposes reports through an API and web UI.

## Setup

```shell
make install
make up
make seed
```

## Tests

```shell
vendor/bin/phpunit
vendor/bin/phpunit --testsuite=Feature
```

## Project Structure

```text
app/Actions      One-command application operations
app/Models       Persisted domain records
app/Services     External API and infrastructure integrations
tests/Unit       Isolated object behavior
tests/Feature    HTTP and framework integration behavior
```

## Owners

| Area | Owner | Contact |
| --- | --- | --- |
| API | @weather-api | #weather-api |
| UI | @weather-ui | #weather-ui |
````

## Review Finding Example

```md
Finding: The README gives `make up` but never explains how to create usable
development data. Add a verified `make seed` or reset command, or document how
to import a maintained fixture. New contributors should not have to invent
test users manually.
```
