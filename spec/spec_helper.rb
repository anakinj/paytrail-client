$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
else
  require 'simplecov'
  SimpleCov.start
end
require 'pry'
require 'vcr'

require 'paytrail-client'

# Configure test credentials
PaytrailClient.configuration do |config|
  config.merchant_id = 13466
  config.merchant_secret = '6pKF4jkv97zmqBJ3ZL8gUw5DfT2NMQ'
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.ignore_hosts 'codeclimate.com'
end
