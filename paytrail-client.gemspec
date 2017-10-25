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

  spec.required_ruby_version = '>= 2.2'

  spec.add_runtime_dependency 'rest-client'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.1'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'webmock', '~> 3.1'
  spec.add_development_dependency 'vcr', '~> 3.0'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'simplecov', '~> 0.15'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
end
