Pod::Spec.new do |s|
  s.name             = 'APIVerveFileSizeFormatter'
  s.version          = '1.2.3'
  s.summary          = 'File Size Formatter converts raw byte counts into human-readable file size strings.'
  s.description      = <<-'DESC'
File Size Formatter converts raw byte counts into human-readable file size strings. Send a byte count with optional precision and unit settings to receive formatted labels, unit names, and scaled numeric values.

This iOS/macOS SDK provides a convenient way to access the File Size Formatter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/filesizeformatter?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/filesizeformatter-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveFileSizeFormatter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
