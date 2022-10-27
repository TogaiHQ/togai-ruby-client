# TogaiClient::UpdateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the customer | [optional] |
| **primary_email** | **String** | Primary email of the customer | [optional] |
| **billing_address** | **String** | billing address of the customer | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateCustomerRequest.new(
  name: null,
  primary_email: null,
  billing_address: null
)
```

