# File Size Formatter API - Ruby Gem

File Size Formatter converts raw byte counts into human-readable file size strings. Send a byte count with optional precision and unit settings to receive formatted labels, unit names, and scaled numeric values.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_filesizeformatter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_filesizeformatter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_filesizeformatter'

# Initialize the client
client = APIVerve::Filesizeformatter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  bytes: 1073741824,
  unit: "GB",
  precision: 2,
  standard: "binary"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ bytes: 1073741824, unit: "GB", precision: 2, standard: "binary" })
  puts response["data"]
rescue APIVerve::Filesizeformatter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Filesizeformatter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Filesizeformatter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/filesizeformatter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/filesizeformatter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/filesizeformatter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
