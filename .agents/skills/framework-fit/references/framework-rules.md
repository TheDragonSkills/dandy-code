# Framework Rules

- Choosing a framework means accepting its conventions, not only its packages.
- The framework often already provides adapters for data access, validation, routing, commands, events, and policies.
- A repository or service layer is useful when it expresses project behavior or isolates a real external dependency.
- A repository or service layer is noise when it merely forwards to a framework API without changing the contract.
- Mixing framework ecosystems creates long-term maintenance cost unless the integration is intentional and documented.
- Do not add DDD, CQRS, microservices, or custom abstraction because they sound mature. Use them only when the domain and project pressure justify them.
