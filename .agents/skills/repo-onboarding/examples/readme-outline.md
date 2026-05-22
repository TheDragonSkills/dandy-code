# README Outline Example

```markdown
# Weather API

Weather API ingests weather observations, normalizes them, and exposes
aggregated reports through HTTP endpoints.

## Setup

composer install
cp .env.example .env
php artisan migrate --seed

## Run

php artisan serve

## Test

vendor/bin/phpunit
vendor/bin/phpunit --testsuite=Unit

## Directory Structure

- `app/Domain`: core weather calculations and policies.
- `app/Http`: controllers, requests, and API resources.
- `database/factories`: local and test data builders.
- `tests/Unit`: isolated domain tests.
- `tests/Feature`: HTTP and integration tests.

## Ownership

- Maintainer: @weather-team
- CODEOWNERS: `.github/CODEOWNERS`
```

Use this as a shape, not a template to paste blindly. Verify commands against the actual project.
