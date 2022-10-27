# TogaiClient::CreateCustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of customer |  |
| **name** | **String** | Name of the customer |  |
| **primary_email** | **String** | Primary email of the customer |  |
| **billing_address** | **String** | billing address of the customer |  |
| **account** | [**Account**](Account.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomerResponse.new(
  id: null,
  name: null,
  primary_email: null,
  billing_address: null,
  account: null
)
```

