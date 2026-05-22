# Generated Code Review Examples

## Duplicate Source Of Truth

```php
// Generated change: works locally, but bypasses the existing token boundary.
private function tokenExists(string $token): bool
{
    return DB::table('tokens')
        ->where('value', $token)
        ->exists();
}
```

```php
// Project-owned change.
private function tokenExists(string $token): bool
{
    return $this->tokens->exists($token);
}
```

## Prompt Satisfied, Code Still Unsafe

```php
// Generated after "add logging".
$conn->query("INSERT INTO users (email) VALUES ('$email')");
file_put_contents('log.txt', "User $email\n", FILE_APPEND);
```

Review findings:

- Raw SQL with direct interpolation remains unsafe.
- Email logging may expose personal data.
- Error handling is still absent.
- The function still has no meaningful result.

Do not stop at "the prompt was completed"; review the surrounding behavior.
