# File Size Formatter API - Dart/Flutter Client

File Size Formatter converts raw byte counts into human-readable file size strings. Send a byte count with optional precision and unit settings to receive formatted labels, unit names, and scaled numeric values.

[![pub package](https://img.shields.io/pub/v/apiverve_filesizeformatter.svg)](https://pub.dev/packages/apiverve_filesizeformatter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [File Size Formatter API](https://apiverve.com/marketplace/filesizeformatter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_filesizeformatter: ^1.2.4
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_filesizeformatter/apiverve_filesizeformatter.dart';

void main() async {
  final client = FilesizeformatterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'bytes': 1073741824,
      'unit': 'GB',
      'precision': 2,
      'standard': 'binary'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [File Size Formatter API](https://apiverve.com/marketplace/filesizeformatter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/filesizeformatter](https://docs.apiverve.com/ref/filesizeformatter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
