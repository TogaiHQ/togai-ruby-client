# TogaiClient::CreatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **pricing_cycle** | [**PricingCycle**](PricingCycle.md) |  |  |
| **rate_card** | [**RateCard**](RateCard.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanRequest.new(
  name: null,
  description: null,
  pricing_cycle: null,
  rate_card: null
)
```

