# TogaiClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of customer |  |
| **name** | **String** | Name of the customer |  |
| **primary_email** | **String** | Primary email of the customer |  |
| **billing_address** | **String** | billing address of the customer |  |
| **status** | **String** | Status of the customer |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Customer.new(
  id: null,
  name: null,
  primary_email: null,
  billing_address: null,
  status: ACTIVE,
  created_at: null,
  updated_at: null
)
```

