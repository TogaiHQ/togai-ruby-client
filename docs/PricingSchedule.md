# TogaiClient::PricingSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_payload** | [**RateCard**](RateCard.md) |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingSchedule.new(
  rate_payload: null,
  start_date: null,
  end_date: null
)
```

