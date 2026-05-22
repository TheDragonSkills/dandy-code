# Testing Rules

## Tests Are the First Client

If code is hard to unit test, that is design feedback. Extract logic from controllers, commands, queues, or UI handlers into objects that can be exercised directly.

## Unit-First Bias

Feature tests verify integration surfaces. They should not be the only place business behavior is tested.

Prefer:

- small domain objects
- deterministic inputs
- explicit expected results
- no real network, time, or queue dependency unless the test is explicitly integration-level

## Arrange-Act-Assert

Tests should make setup, action, and assertion visually obvious. Usually one test should verify one behavior.

## Local Setup

Create only the data the test needs, as near to the test as possible. Avoid shared fixture records referenced by magic IDs.

## Independence

Tests must pass in any order. Random-order runs expose hidden state coupling.

## Coverage

Coverage shows which code ran, not whether behavior is well checked. Use it to find forgotten branches.

## Async

Fixed sleeps are a smell. Prefer:

- fake the bus, queue, HTTP client, or event system
- run jobs synchronously for behavior checks
- poll a condition with timeout when an external effect truly must happen

## Symmetry

When two components are coupled by data format, test the round trip so mismatches become visible.
