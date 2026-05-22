# Framework Fit Rules

## Accept the Platform Contract

Choosing a framework means accepting a development style, ecosystem, documentation model, and upgrade path. Fighting that style usually creates noise, not independence.

## Abstraction Test

A custom abstraction is justified when:

- there are multiple real implementations
- the framework primitive leaks a painful detail
- it protects a domain boundary with behavior, not just method forwarding
- tests become simpler without distorting production code

It is not justified when it only wraps native framework APIs to look "architectural."

## Repository Caution

In active-record-style frameworks, model query APIs may already be the data access abstraction. Adding repositories by default can create duplicate truth and ceremony.

## Do Not Assemble a Franken-framework

Mixing major framework components can make onboarding, documentation, upgrades, and community support worse. Use libraries deliberately, not because each framework has one attractive part.

## Tool Fit

If the team fundamentally dislikes a framework's conventions, do not reshape it beyond recognition. Either agree to use it as intended or choose another stack.

## Upgrade Discipline

"It still works" is not enough. Falling behind supported versions creates:

- custom replacements for features later provided by the framework
- harder major upgrades
- security and compatibility risk
- hiring and onboarding friction
