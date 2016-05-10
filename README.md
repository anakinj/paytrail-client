# paytrail-client

[![Build Status](https://travis-ci.org/anakinj/paytrail-client.svg?branch=master)](https://travis-ci.org/anakinj/paytrail-client) [![Code Climate](https://codeclimate.com/github/anakinj/paytrail-client/badges/gpa.svg)](https://codeclimate.com/github/anakinj/paytrail-client) [![Test Coverage](https://codeclimate.com/github/anakinj/paytrail-client/badges/coverage.svg)](https://codeclimate.com/github/anakinj/paytrail-client/coverage) [![Gem Version](https://badge.fury.io/rb/paytrail-client.svg)](https://badge.fury.io/rb/paytrail-client)

Paytrail client for the Paytrail API. Please refer to the [Paytrail documentation](http://docs.paytrail.com/) for more information.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paytrail-client'
```

## Usage

```ruby
require 'paytrail-client'

# Configure the client with your merchant credentials
PaytrailClient.configure do |config|
  config.merchant_id     = 12345
  config.merchant_secret = 'your_merchant_secret'
end

# Call Paytrail API for a payment token.
# The client supports passing the object keys as snake_case or camelCase.
token = PaytrailClient::Payment.create(order_number: '1234',
                               currency: 'EUR',
                               locale: 'en_US',
                               url_set: {
                                 success: 'http://www.example.org/success',
                                 failure: 'http://www.example.org/failure',
                                 notification: 'http://www.example.org/notification'
                               },
                               price: 100.50)

# Redirect to received url
redirect_to(token['url'])


# Verify payment

begin
  PaytrailClient::Payment.verify_payment!(
                            params['ORDER_NUMBER'],
                            params['TIMESTAMP'],
                            params['PAID'],
                            params['METHOD'],
                            params['RETURN_AUTHCODE'])
  puts 'Payment verified'
rescue PaytrailClient::InvalidPaymentError
  puts 'Could not verify payment'
end

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/anakinj/paytrail-client.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
