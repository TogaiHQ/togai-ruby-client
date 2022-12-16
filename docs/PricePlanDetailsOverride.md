# TogaiClient::PricePlanDetailsOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **rate_cards** | [**Array&lt;RateCard&gt;**](RateCard.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanDetailsOverride.new(
  pricing_cycle_config: null,
  rate_cards: null
)
```

