$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
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
