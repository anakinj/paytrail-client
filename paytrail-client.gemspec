# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paytrail_client/version'

Gem::Specification.new do |spec|
  spec.name          = 'paytrail-client'
  spec.version       = PaytrailClient::VERSION
  spec.authors       = ['Joakim Antman']
  spec.email         = ['antmanj@gmail.com']

  spec.summary       = 'Simple paytrail client'
  spec.description   = 'Client for consuming the Paytrail API'
  spec.homepage      = 'https://github.com/anakinj/paytrail-client'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9'

  spec.add_runtime_dependency 'rest-client'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'webmock', '~> 1.24'
  spec.add_development_dependency 'vcr', '~> 3.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'simplecov', '~> 0.11'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.3.0'
end
