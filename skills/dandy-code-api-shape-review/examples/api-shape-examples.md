# API Shape Examples

## Too Many Parameters

```php
// Before
$fileSystem->write('/tmp/report.txt', true, 'data', 'UTF-8', true);

// After
$fileSystem
    ->path('/tmp/report.txt')
    ->encoding('UTF-8')
    ->overwrite()
    ->debug()
    ->write('data');
```

## Optional Parameter Ordering

```php
// Before
$fileSystem->write('/tmp/report.txt', null, 'data');

// After
$fileSystem->write('/tmp/report.txt', 'data');
```

## Boolean Flag Split

```php
// Before
$fileSystem->write('/tmp/report.txt', 'data', true);

// After
$fileSystem->rewrite('/tmp/report.txt', 'data');
```

## Object Instead of Scalar Fragments

```php
// Before
$excludeList->add('user', 'id', '42');

// After
$excludeList->add($user);
```
