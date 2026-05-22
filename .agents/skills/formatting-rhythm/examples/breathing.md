# Breathing Example

```php
// Before
$user = $request->user();
$invoice = Invoice::findOrFail($id);
$invoice->assignTo($user);
$invoice->markPending();
$invoice->save();
return $invoice;
```

```php
// After
$user = $request->user();

$invoice = Invoice::findOrFail($id);
$invoice->assignTo($user);
$invoice->markPending();
$invoice->save();

return $invoice;
```

The after version separates lookup, domain work, and return.

```php
// Too fragmented
$logger->debug('start');

$service->prepare();

$service->run();

$logger->debug('done');
```

```php
// Better
$logger->debug('start');

$service->prepare();
$service->run();

$logger->debug('done');
```

Keep one logical sequence together.
