# TogaiClient::PricingSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingSchedule.new(
  price_plan_details: null,
  start_date: null,
  end_date: null
)
```

