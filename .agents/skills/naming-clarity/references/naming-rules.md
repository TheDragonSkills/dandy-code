# Naming Rules

- Names are the first line of communication.
- Prefer English names in ecosystems where framework, libraries, and docs are already English.
- Avoid generic variables such as `$data`, `$item`, `$value`, and `$result` when the method is not tiny.
- Avoid abbreviations unless they are established project terms.
- Boolean methods and variables should state the truth condition.
- Unit-bearing values should include the unit or become typed values.
- Keep names concise by using context. `PostCollection::add()` is clearer than `PostItemCollection::addPost()`.
- Paired methods should use paired words: `start`/`finish`, `begin`/`complete`, `open`/`close`.
- Misleading names are worse than vague names because they teach the wrong model.
- If a class wants to be called `Manager`, `Processor`, `Handler`, or `Service`, ask what concrete responsibility is being hidden.

## Magic Value Rules

- Replace meaningful literals with constants, enums, value objects, or named APIs.
- Do not replace every literal mechanically.
- If constants preserve a chain of low-level arithmetic, prefer a domain object or library call that expresses the operation directly.
