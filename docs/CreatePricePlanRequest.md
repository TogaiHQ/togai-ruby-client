# TogaiClient::CreatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanRequest.new(
  name: null,
  description: null,
  price_plan_details: null
)
```

