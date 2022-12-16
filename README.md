# togai_client

TogaiClient - the Ruby gem for the Togai Apis

[Togai](https://www.togai.com/) is an end to end pricing infrastructure that enable you with metering, aggregating, pricing and billing for your application.

This is an official Ruby client library for using [Togai APIs](https://docs.togai.com/reference).


- API version: 1.0
- Package version: 1.0.1

## Installation

Add this line to your application's Gemfile:

```rb
gem 'togai_client'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install togai_client
```

## Getting Started

To get started with the library, you need to create a api token from your Togai Account
Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'togai_client'

# Setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
customer_id = 'customer_id_example' # String | 
account_id = 'account_id_example' # String | 
add_account_aliases_request = TogaiClient::AddAccountAliasesRequest.new # AddAccountAliasesRequest | Payload to add aliases to account

begin
  #Add Aliases to account
  result = api_instance.add_aliases(customer_id, account_id, add_account_aliases_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Exception when calling AccountsApi->add_aliases: #{e}"
end

```
