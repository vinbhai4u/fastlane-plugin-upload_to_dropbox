# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/upload_to_dropbox/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-upload_to_dropbox'
  spec.version       = Fastlane::UploadToDropbox::VERSION
  spec.author        = 'Vineeth Vijayan'
  spec.email         = 'vineeth.v@naicoits.com'

  spec.summary       = 'upload to dropbox'
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-upload_to_dropbox"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'
  spec.add_dependency 'dropbox_api'

  spec.add_development_dependency('pry')
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rubocop', '~> 0.79.0')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('fastlane', '>= 2.68.0')
end
