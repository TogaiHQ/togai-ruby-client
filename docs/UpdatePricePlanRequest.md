# TogaiClient::UpdatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of price plan | [optional] |
| **price_plan_details** | [**PricePlanDetailsOverride**](PricePlanDetailsOverride.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricePlanRequest.new(
  description: null,
  price_plan_details: null
)
```

