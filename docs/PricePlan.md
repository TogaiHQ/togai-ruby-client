# TogaiClient::PricePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **status** | **String** | Status of Price plan |  |
| **pricing_schedule** | [**Array&lt;PricingSchedule&gt;**](PricingSchedule.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlan.new(
  name: null,
  description: null,
  status: null,
  pricing_schedule: null
)
```

