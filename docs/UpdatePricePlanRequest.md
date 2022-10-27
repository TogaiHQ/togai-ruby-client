# TogaiClient::UpdatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of price plan | [optional] |
| **pricing_cycle** | [**PricingCycle**](PricingCycle.md) |  | [optional] |
| **rate_card** | [**RateCard**](RateCard.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricePlanRequest.new(
  description: null,
  pricing_cycle: null,
  rate_card: null
)
```

