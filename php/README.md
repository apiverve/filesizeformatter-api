# File Size Formatter API - PHP Package

File Size Formatter is a tool for converting bytes to human-readable file sizes (KB, MB, GB, TB, etc.). It supports both binary (1024) and decimal (1000) standards with customizable precision.

## Installation

Install via Composer:

```bash
composer require apiverve/filesizeformatter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Filesizeformatter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'bytes' => 1073741824,
    'unit' => 'GB',
    'precision' => 2,
    'standard' => 'binary'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Filesizeformatter\Client;
use APIVerve\Filesizeformatter\Exceptions\APIException;
use APIVerve\Filesizeformatter\Exceptions\ValidationException;

try {
    $response = $client->execute(['bytes' => 1073741824, 'unit' => 'GB', 'precision' => 2, 'standard' => 'binary']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "bytes": 1073741824,
    "formatted": "1 GiB",
    "value": 1,
    "unit": "GiB",
    "standard": "binary",
    "precision": 2,
    "conversions": {
      "B": 1073741824,
      "KiB": 1048576,
      "MiB": 1024,
      "GiB": 1,
      "TiB": 0,
      "PiB": 0,
      "EiB": 0,
      "ZiB": 0,
      "YiB": 0
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/filesizeformatter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/filesizeformatter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/filesizeformatter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
